//
//  SwarSection.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

struct SwarSection: View {
    let raag: Raag
    @State private var expandedSection: SwarType? = .aroh
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Swars")
                .font(.title2)
                .fontWeight(.bold)
            
            // Aroh
            SwarCard(
                title: "Aroh (Ascending)",
                swar: raag.aroh,
                icon: "arrow.up",
                color: .blue,
                isExpanded: expandedSection == .aroh
            ) {
                toggleSection(.aroh)
            }
            
            // Avroh
            SwarCard(
                title: "Avroh (Descending)",
                swar: raag.avroh,
                icon: "arrow.down",
                color: .purple,
                isExpanded: expandedSection == .avroh
            ) {
                toggleSection(.avroh)
            }
            
            // Pakad
            if let pakad = raag.pakad {
                SwarCard(
                    title: "Pakad",
                    swar: pakad,
                    icon: "music.note",
                    color: .orange,
                    isExpanded: expandedSection == .pakad
                ) {
                    toggleSection(.pakad)
                }
            }
        }
    }
    
    private func toggleSection(_ section: SwarType) {
        withAnimation {
            expandedSection = expandedSection == section ? nil : section
        }
    }
    
    enum SwarType {
        case aroh, avroh, pakad
    }
}

// MARK: - Swar Card
struct SwarCard: View {
    let title: String
    let swar: String
    let icon: String
    let color: Color
    let isExpanded: Bool
    let onTap: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Button(action: onTap) {
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(color)
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            
            if isExpanded {
                Text(swar)
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}



#Preview {
    SwarSection(raag: RaagDataStore.shared.getRaags()[0])
}
