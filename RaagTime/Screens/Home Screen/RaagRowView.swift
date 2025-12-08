//
//  RaagRowView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

struct RaagRowView: View {
    let raag: Raag
    let isCurrentTime: Bool
    
    var body: some View {
        HStack(spacing: 16) {
            // Time Indicator Circle
            Circle()
                .fill(isCurrentTime ? Color.green : Color.blue.opacity(0.7))
                .frame(width: 50, height: 50)
                .overlay(
                    VStack(spacing: 2) {
                        Image(systemName: "clock")
                            .font(.caption)
                        Text(timeAbbreviation)
                            .font(.caption2)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                )
            
            // Raag Info
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(raag.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    if isCurrentTime {
                        Image(systemName: "circle.fill")
                            .font(.caption)
                            .foregroundColor(.yellow)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Label(raag.thaat.rawValue, systemImage: "music.note.list")
                        .font(.caption)
                    
                    HStack(spacing: 4) {
                        Label(raag.time.rawValue, systemImage: "clock")
                            .font(.caption)
                        Text(raag.time.timeRange)
                            .font(.caption)
                    }
                }
                .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // YouTube Indicator
            if let links = raag.youtubeLinks, !links.isEmpty {
                VStack {
                    Image(systemName: "play.square")
                        .font(.title2)
                        .foregroundColor(.red)
                    Text("\(links.count)")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .padding(.top, 4)
                }
            }
            
            Image(systemName: "chevron.right")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 2)
    }
    
    private var timeAbbreviation: String {
        switch raag.time {
        case .earlyMorning: return "EM"
        case .morning: return "MOR"
        case .lateMorning: return "LM"
        case .afternoon: return "AFT"
        case .evening: return "EVE"
        case .lateEvening: return "LE"
        case .night: return "NGT"
        case .midnight: return "MID"
        }
    }
}

#Preview {
    RaagRowView(raag: RaagDataStore.shared.raags.first!, isCurrentTime: false)
}
