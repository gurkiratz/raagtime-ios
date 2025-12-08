//
//  SortMenu.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-08.
//

import SwiftUI

struct SortMenu: View {
    @Binding var selectedSort: SortOption
    
    var body: some View {
        Menu {
            ForEach(SortOption.allCases, id: \.self) { option in
                Button(action: { selectedSort = option }) {
                    HStack {
                        Text(option.rawValue)
                        if selectedSort == option {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
        } label: {
            HStack(spacing: 4) {
                Text("Sort")
                    .font(.subheadline)
                Image(systemName: "arrow.up.arrow.down")
                    .font(.caption)
            }
            .foregroundColor(.blue)
        }
    }
}
//
//#Preview {
//    SortMenu()
//}
