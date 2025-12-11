//
//  RaagDetailViewModel.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-10.
//

import Foundation

@MainActor
@Observable class RaagDetailViewModel {
    var selectedVideo: String?
    private let raag: Raag
    
    init(raag: Raag) {
        self.raag = raag
        // Auto-select first video if available
        self.selectedVideo = raag.youtubeLinks?.first
    }
    
    func addYouTubeLink(_ link: String) {
        RaagDataStore.shared.addYoutubeLink(to: raag.id, link: link)
        // Update selected video to the newly added one
        selectedVideo = link
    }
}
