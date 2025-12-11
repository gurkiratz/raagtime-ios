//
//  YoutubeListView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-10.
//

import SwiftUI
import YouTubePlayerKit

// MARK: - YouTube List View
struct YouTubeListView: View {
    let youtubeLinks: [String]
    @Binding var selectedVideo: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Songs and Performances")
                .font(.title2)
                .fontWeight(.bold)
            
            // Selected Video Player
            if let selectedVideo = selectedVideo,
               let source = YouTubePlayer.Source(urlString: selectedVideo) {
                let player = YouTubePlayer(source: source)
                YouTubePlayerView(player)
                    .frame(height: 220)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                    .padding()
                    .id(selectedVideo) // Force view recreation when video changes
            }
            
            // Video List
            VStack(spacing: 12) {
                ForEach(Array(youtubeLinks.enumerated()), id: \.offset) { index, link in
                    YouTubeVideoRow(
                        link: link,
                        index: index + 1,
                        isSelected: selectedVideo == link
                    ) {
                        selectedVideo = link
                    }
                }
            }
        }
    }
}
//#Preview {
//    YouTubeListView()
//}
