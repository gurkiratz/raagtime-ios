//
//  FilterBar.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

struct FilterBar: View {
    @Binding var selectedTime: TimeOfDay?
    @Binding var showCurrentTime: Bool
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                // Current Time Filter
                FilterChip(
                    title: "Now",
                    isSelected: showCurrentTime,
                    icon: "clock.fill"
                ) {
                    showCurrentTime.toggle()
                    if showCurrentTime {
                        selectedTime = nil
                    }
                }
                
                Divider()
                    .frame(height: 30)
                
                // All Time Filters
                ForEach(TimeOfDay.allCases, id: \.self) { time in
                    FilterChip(
                        title: time.rawValue,
                        isSelected: selectedTime == time
                    ) {
                        if selectedTime == time {
                            selectedTime = nil
                        } else {
                            selectedTime = time
                            showCurrentTime = false
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 8)
    }
}

// MARK: - Filter Chip
struct FilterChip: View {
    let title: String
    let isSelected: Bool
    var icon: String? = nil
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 4) {
                if let icon = icon {
                    Image(systemName: icon)
                        .font(.caption)
                }
                Text(title)
                    .font(.subheadline)
                    .fontWeight(isSelected ? .semibold : .regular)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(isSelected ? Color.blue : Color(.systemGray5))
            .foregroundColor(isSelected ? .white : .primary)
            .cornerRadius(20)
        }
    }
}

//#Preview {
//    FilterBar()
//}
