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
    
    /// Returns true if the raag is a monsoon raag and we're in monsoon season
    func isMonsoonRaagInSeason(_ raag: Raag) -> Bool {
        return raag.time == .monsoon && TimeOfDay.isMonsoonSeason()
    }
    
    func refresh() {
        // Trigger a refresh (useful if you add remote data fetching later)
        print("Refresh Raag data")
    }
}
