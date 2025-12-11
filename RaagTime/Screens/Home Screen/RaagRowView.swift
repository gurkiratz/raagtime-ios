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
                    if let thaat = raag.thaat {
                        Label(thaat.rawValue, systemImage: "music.note.list")
                            .font(.caption)
                    }
                    
                    HStack(spacing: 4) {
                        Label(raag.time.rawValue, systemImage: "clock")
                            .font(.caption)
                        Text(raag.time.displayName)
                            .font(.caption)
                    }
                }
                .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // YouTube Indicator
            if let links = raag.youtubeLinks, !links.isEmpty {
                VStack {
                    Image("youtube-logo")
                        .resizable()
                        .frame(width: 20, height: 15)
                        .aspectRatio(contentMode: .fit)
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
        case .t03_06: return "EM"
        case .t06_09: return "MOR"
        case .t09_12: return "LM"
        case .t12_15: return "AFT"
        case .t15_18: return "EVE"
        case .t18_21: return "LE"
        case .t21_24: return "NGT"
        case .t00_03: return "MID"
        case .monsoon: return "MON"
        }
    }
}

#Preview {
    RaagRowView(raag: RaagDataStore.shared.raags.first!, isCurrentTime: false)
}
