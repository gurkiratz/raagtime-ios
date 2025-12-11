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

enum ViewMode: String, CaseIterable {
    case normal = "Normal"
    case compact = "Compact"
}


// MARK: - Main Home View
struct RaagListView: View {
    @State private var viewModel = RaagListViewModel()
    @State private var viewMode: ViewMode = .normal
    
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
                
                // Sort Menu & View Mode Switcher
                HStack {
                    // View Mode Switcher
                    Picker("View", selection: $viewMode) {
                        Image(systemName: "rectangle.grid.1x2")
                            .tag(ViewMode.normal)
                        Image(systemName: "list.bullet")
                            .tag(ViewMode.compact)
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 100)
                    .padding(.leading)
                    
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
                        LazyVStack(spacing: viewMode == .compact ? 0 : 12) {
                            // Table header for compact view
                            if viewMode == .compact {
                                HStack {
                                    Text("Name")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("Time")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .frame(width: 100, alignment: .leading)
                                    Text("Thaat")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .frame(width: 70, alignment: .leading)
                                    Spacer()
                                        .frame(width: 28) // Space for indicator + chevron
                                }
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(Color(.secondarySystemBackground))
                                
                                Divider()
                            }
                            
                            ForEach(viewModel.filteredRaags) { raag in
                                NavigationLink(destination: RaagDetailView(raag: raag)) {
                                    if viewMode == .compact {
                                        CompactRaagRowView(
                                            raag: raag,
                                            isCurrentTime: viewModel.isCurrentTime(raag),
                                            isMonsoonRaag: viewModel.isMonsoonRaagInSeason(raag)
                                        )
                                    } else {
                                        RaagRowView(
                                            raag: raag,
                                            isCurrentTime: viewModel.isCurrentTime(raag),
                                            isMonsoonRaag: viewModel.isMonsoonRaagInSeason(raag)
                                        )
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())
                                
                                if viewMode == .compact {
                                    Divider()
                                        .padding(.leading, 12)
                                }
                            }
                        }
                        .padding(viewMode == .compact ? 0 : 16)
                    }
                }
            }
            .navigationTitle("RaagTime")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AboutView()) {
                        Image(systemName: "info.circle")
                    }
                }
                .sharedBackgroundVisibility(.hidden)
            }
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


