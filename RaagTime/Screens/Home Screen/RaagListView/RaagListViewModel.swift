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
    var sortOption: SortOption = .alphabetical
    
    private let dataStore = RaagDataStore.shared
    
    var filteredRaags: [Raag] {
        var raags = dataStore.getRaags()
        
        // Apply search filter
        if !searchText.isEmpty {
            raags = dataStore.searchRaags(query: searchText)
        }
        
        // Apply time filter
        if showCurrentTimeOnly {
            raags = dataStore.getCurrentTimeRaags()
        } else if let timeFilter = selectedTimeFilter {
            raags = raags.filter { $0.time == timeFilter }
        }
        
        // Apply sorting
        switch sortOption {
        case .alphabetical:
            raags = raags.sorted { $0.name < $1.name }
        case .time:
            raags = raags.sorted { $0.time.rawValue < $1.time.rawValue }
        case .thaat:
            raags = raags.sorted { $0.thaat.rawValue < $1.thaat.rawValue }
        }
        
        return raags
    }
    
    func isCurrentTime(_ raag: Raag) -> Bool {
        return raag.time == TimeOfDay.current()
    }
    
    func refresh() {
        // Trigger a refresh (useful if you add remote data fetching later)
        print("Refresh Raag data")
    }
}
