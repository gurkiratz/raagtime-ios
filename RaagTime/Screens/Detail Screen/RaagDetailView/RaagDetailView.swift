//
//  RaagDetailView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-10.
//

import SwiftUI
import YouTubePlayerKit

// MARK: - Main Detail View
struct RaagDetailView: View {
    let raag: Raag
    @State private var viewModel: RaagDetailViewModel
    @State private var showShareSheet = false
    
    init(raag: Raag) {
        self.raag = raag
        _viewModel = State(wrappedValue: RaagDetailViewModel(raag: raag))
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                // Header Section
                HeaderSection(raag: raag)
                
                Divider()
                
                // Swar Section (Aroh, Avroh, Pakad)
                SwarSection(raag: raag)
                
                Divider()
                
                // YouTube Videos Section
                if let links = raag.youtubeLinks, !links.isEmpty {
                    YouTubeListView(
                        youtubeLinks: links,
                        selectedVideo: $viewModel.selectedVideo
                    )
                    
                    Divider()
                }
                
                // Contribution Form
                ContributionForm(
                    raagId: raag.id,
                    onSubmit: { link in
                        viewModel.addYouTubeLink(link)
                    }
                )
            }
            .padding()
        }
        .navigationTitle(raag.name)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { showShareSheet = true }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(raag: raag)
        }
    }
}


// MARK: - YouTube Video Row
struct YouTubeVideoRow: View {
    let link: String
    let index: Int
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack {
                // Thumbnail placeholder
                ZStack {
                    Rectangle()
                        .fill(Color(.systemGray5))
                        .frame(width: 80, height: 60)
                        .cornerRadius(8)
                    
                    Image(systemName: "play.circle.fill")
                        .font(.title2)
                        .foregroundColor(.red)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Video \(index)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Text(extractVideoId(from: link) ?? "YouTube Video")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                
                Spacer()
                
                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .background(isSelected ? Color.blue.opacity(0.1) : Color(.systemGray6))
            .cornerRadius(12)
        }
    }
    
    private func extractVideoId(from urlString: String) -> String? {
        guard let url = URL(string: urlString) else { return nil }
        
        if let videoId = URLComponents(url: url, resolvingAgainstBaseURL: false)?
            .queryItems?.first(where: { $0.name == "v" })?.value {
            return videoId
        }
        
        // Handle youtu.be format
        if url.host == "youtu.be" {
            return url.pathComponents.last
        }
        
        return nil
    }
}

// MARK: - Contribution Form
struct ContributionForm: View {
    let raagId: UUID
    let onSubmit: (String) -> Void
    
    @State private var youtubeLink = ""
    @State private var showValidationError = false
    @State private var showSuccessAlert = false
    @FocusState private var isTextFieldFocused: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Contribute")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Know a good YouTube example? Share it!")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            HStack(spacing: 12) {
                // Text Field
                HStack {
                    Image(systemName: "link")
                        .foregroundColor(.gray)
                    
                    TextField("Paste YouTube URL", text: $youtubeLink)
                        .textFieldStyle(PlainTextFieldStyle())
                        .focused($isTextFieldFocused)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .keyboardType(.URL)
                }
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                // Add Button
                Button(action: submitLink) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title2)
                        .foregroundColor(youtubeLink.isEmpty ? .gray : .blue)
                }
                .disabled(youtubeLink.isEmpty)
            }
            
            if showValidationError {
                HStack {
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundColor(.red)
                    Text("Please enter a valid YouTube URL")
                        .font(.caption)
                        .foregroundColor(.red)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6).opacity(0.5))
        .cornerRadius(12)
        .alert("Success!", isPresented: $showSuccessAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("YouTube link added successfully!")
        }
    }
    
    private func submitLink() {
        if isValidYouTubeURL(youtubeLink) {
            onSubmit(youtubeLink)
            youtubeLink = ""
            showValidationError = false
            showSuccessAlert = true
            isTextFieldFocused = false
        } else {
            showValidationError = true
        }
    }
    
    private func isValidYouTubeURL(_ urlString: String) -> Bool {
        guard let url = URL(string: urlString) else { return false }
        
        let host = url.host?.lowercased() ?? ""
        return host.contains("youtube.com") || host.contains("youtu.be")
    }
}

// MARK: - Share Sheet
struct ShareSheet: View {
    let raag: Raag
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 60))
                    .foregroundColor(.blue)
                
                Text("Share \(raag.name)")
                    .font(.title2)
                    .fontWeight(.bold)
                
                ShareLink(
                    item: shareText,
                    subject: Text("Raag \(raag.name)"),
                    message: Text(shareText)
                ) {
                    Label("Share Raag Details", systemImage: "square.and.arrow.up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    private var shareText: String {
        var text = """
        🎵 Raag: \(raag.name)
        ⏰ Time: \(raag.time.rawValue) (\(raag.time.displayName))
        🎼 Thaat: \(raag.thaat.rawValue)
        
        📈 Aroh: \(raag.aroh)
        📉 Avroh: \(raag.avroh)
        """
        
        if let pakad = raag.pakad {
            text += "\n✋ Pakad: \(pakad)"
        }
        
        text += "\n\nShared from RaagTime App"
        
        return text
    }
}

// MARK: - Preview
#Preview {
    NavigationStack {
        RaagDetailView(raag: RaagDataStore.shared.getRaags()[1])
    }
}
