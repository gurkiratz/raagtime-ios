//
//  HeaderSection.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-10.
//

import SwiftUI

// MARK: - Header Section
struct HeaderSection: View {
    let raag: Raag
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Time Badge
            HStack {
                Label(raag.time.displayName, systemImage: "clock.fill")
                    .font(.subheadline)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.blue.opacity(0.2))
                    .foregroundColor(.blue)
                    .cornerRadius(8)
                
                if raag.time == TimeOfDay.current() {
                    Label("Recommended Now", systemImage: "star.fill")
                        .font(.subheadline)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(8)
                }
            }
            
            // Time Range
            Text(raag.time.rawValue)
                .font(.caption)
                .foregroundColor(.secondary)
            
            // Thaat
            HStack {
                Text("Thaat:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(raag.thaat.rawValue)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    HeaderSection(raag: RaagDataStore.shared.getRaags()[0])
}
