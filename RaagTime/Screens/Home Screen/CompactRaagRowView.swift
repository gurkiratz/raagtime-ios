//
//  CompactRaagRowView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-11.
//

import SwiftUI

struct CompactRaagRowView: View {
    let raag: Raag
    let isCurrentTime: Bool
    
    var body: some View {
        HStack {
            // Title
            Text(raag.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Time
            Text(raag.time.rawValue)
                .font(.caption)
                .foregroundColor(.secondary)
                .frame(width: 100, alignment: .leading)
            
            // Thaat
            Text(raag.thaat?.rawValue ?? "-")
                .font(.caption)
                .foregroundColor(.secondary)
                .frame(width: 70, alignment: .leading)
            
            // Current time indicator
            if isCurrentTime {
                Circle()
                    .fill(Color.green)
                    .frame(width: 8, height: 8)
            }
            
            Image(systemName: "chevron.right")
                .font(.caption2)
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .background(Color(.systemBackground))
    }
}

#Preview {
    CompactRaagRowView(raag: RaagDataStore.shared.raags.first!, isCurrentTime: true)
}
