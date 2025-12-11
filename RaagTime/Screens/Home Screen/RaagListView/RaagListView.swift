//
//  RaagTimeListView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

enum SortOption: String, CaseIterable {
    case alphabetical = "Alphabetical"
    case time = "Time"
    case thaat = "Thaat"
}


// MARK: - Main Home View
struct RaagListView: View {
    @State private var viewModel = RaagListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Search Bar
                SearchBar(text: $viewModel.searchText)
                    .padding(.horizontal)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                
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
                .padding(.vertical, 8)
                
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
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Placeholder Detail View
//struct RaagDetailView: View {
//    let raag: Raag
//    
//    var body: some View {
//        ScrollView {
//            VStack(alignment: .leading, spacing: 20) {
//                Text(raag.name)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                
//                Text("Detail view coming soon...")
//                    .foregroundColor(.secondary)
//            }
//            .padding()
//        }
//        .navigationTitle(raag.name)
//        .navigationBarTitleDisplayMode(.inline)
//    }
//}

#Preview {
    RaagListView()
}
