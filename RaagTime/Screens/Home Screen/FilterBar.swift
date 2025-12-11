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
                        title: time.displayName,
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

// MARK: - Filter Chip Button Style
struct FilterChipButtonStyle: ButtonStyle {
    let isSelected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.subheadline)
            .fontWeight(isSelected ? .semibold : .regular)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(isSelected ? Color.accentColor : Color(.systemGray6))
            .foregroundColor(isSelected ? .white : .primary)
            .cornerRadius(20)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
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
            }
        }
        .buttonStyle(FilterChipButtonStyle(isSelected: isSelected))
    }
}

#Preview {
    FilterBar(selectedTime: .constant(TimeOfDay.t15_18), showCurrentTime: .constant(true))
}
