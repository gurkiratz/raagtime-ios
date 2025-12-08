//
//  YoutubePlayerView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI
import YouTubePlayerKit

struct YoutubePlayerView: View {
    
    let youtubeURL: YouTubePlayer
    
    var body: some View {
        YouTubePlayerView(youtubeURL)
            .frame(height: 220)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .padding()
    }
}

#Preview {
    YoutubePlayerView(youtubeURL: "https://youtu.be/b1oC7sLIgpI?si=cp3zslqjNXewJoeU")
}
