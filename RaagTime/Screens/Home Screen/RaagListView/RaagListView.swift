//
//  RaagTimeListView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

// MARK: - Main Home View
struct RaagListView: View {
    @State private var viewModel = RaagListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Search Bar
                SearchBar(text: $viewModel.searchText)
                    .padding()
                
                // Filter Bar
                FilterBar(
                    selectedTime: $viewModel.selectedTimeFilter,
                    showCurrentTime: $viewModel.showCurrentTimeOnly
                )
                
                // Sort Menu
                HStack {
                    Spacer()
                    SortMenu(selectedSort: $viewModel.sortOption)
                        .padding(.horizontal)
                }
                .padding()
                
                // Raag List
                if viewModel.filteredRaags.isEmpty {
                    EmptyStateView()
                } else {
                    ScrollView {
                        LazyVStack(spacing: 12) {
                            ForEach(viewModel.filteredRaags) { raag in
                                NavigationLink(destination: RaagDetailView(raag: raag)) {
                                    RaagRowView(raag: raag, isCurrentTime: viewModel.isCurrentTime(raag))
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("RaagTime")
        }
    }
}

// MARK: - Empty State View
struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "music.note.list")
                .font(.system(size: 60))
                .foregroundColor(.gray)
            
            Text("No Raags Found")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text("Try adjusting your filters or search term")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// MARK: - Sort Option Enum
enum SortOption: String, CaseIterable {
    case alphabetical = "Alphabetical"
    case time = "Time"
    case thaat = "Thaat"
}

// MARK: - Placeholder Detail View
struct RaagDetailView: View {
    let raag: Raag
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(raag.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Detail view coming soon...")
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .navigationTitle(raag.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RaagListView()
}
