//
//  RaagListViewModel.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import Foundation

@MainActor
@Observable class RaagListViewModel {
    var searchText = ""
    var selectedTimeFilter: TimeOfDay?
    var showCurrentTimeOnly = false
    var showFavoritesOnly = false
    var sortOption: SortOption = .alphabetical
    
    private let dataStore = RaagDataStore.shared
    private let favoritesService = FavoritesService.shared
    
    var filteredRaags: [Raag] {
        var raags = dataStore.getRaags()
        
        // Apply search filter
        if !searchText.isEmpty {
            raags = dataStore.searchRaags(query: searchText)
        }
        
        // Apply favorites filter
        if showFavoritesOnly {
            raags = raags.filter { favoritesService.isFavorite($0.id) }
        }
        
        // Apply time filter
        if showCurrentTimeOnly {
            let currentTimeRaags = dataStore.getCurrentTimeRaags()
            raags = raags.filter { raag in currentTimeRaags.contains { $0.id == raag.id } }
        } else if let timeFilter = selectedTimeFilter {
            raags = raags.filter { $0.time == timeFilter }
        }
        
        // Apply sorting
        switch sortOption {
        case .alphabetical:
            raags = raags.sorted { $0.name < $1.name }
        case .time:
            raags = raags.sorted { $0.time.sortOrder < $1.time.sortOrder }
        case .thaat:
            raags = raags.sorted { raag1, raag2 in
                let thaat1 = raag1.thaat?.rawValue ?? ""
                let thaat2 = raag2.thaat?.rawValue ?? ""
                return thaat1 < thaat2
            }
        }
        
        return raags
    }
    
    func isCurrentTime(_ raag: Raag) -> Bool {
        return raag.time == TimeOfDay.current()
    }
    
    func isFavorite(_ raag: Raag) -> Bool {
        return favoritesService.isFavorite(raag.id)
    }
    
    func toggleFavorite(_ raag: Raag) {
        favoritesService.toggleFavorite(raag.id)
    }
    
    func markAsFavorite(_ raag: Raag) {
        favoritesService.toggleFavorite(raag.id)
    }
    
    func refresh() {
        // Trigger a refresh (useful if you add remote data fetching later)
        print("Refresh Raag data")
    }
}
