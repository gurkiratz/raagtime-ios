//
//  AboutView.swift
//  RaagTime
//
//  Created by Gurkirat Singh on 2025-12-11.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("RaagTime is an app that helps you find the right raag for your mood and time of day.")
                .font(.title3)
                .padding()
            HStack(spacing: 0) {
                Text("Inspired by ")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Link("raagtime.com", destination: URL(string: "https://raagtime.com")!)
                    .font(.footnote)
            }
            Spacer()
            VStack(spacing: 4) {
                Text("Developed by Gurkirat Singh")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Link("github.com/gurkiratz", destination: URL(string: "https://github.com/gurkiratz/raagtime-ios")!)
                    .font(.footnote)
                    .foregroundColor(.blue)
            }
            .padding(.top, 24)
        }
    }
}

#Preview {
    AboutView()
}
