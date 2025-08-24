//
//  ContentView.swift
//  DrinkWater
//
//  Created by Ann Ubaka on 8/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var hydrated = false

    private var statusText: String { hydrated ? "Hydrated." : "Parched." }
    private var statusColor: Color { hydrated ? .blue : .orange }

    var body: some View {
        VStack(spacing: 24) {
            Button(statusText) {
                withAnimation(.easeInOut(duration: 0.2)) { hydrated.toggle() }
            }
            .font(.title)
            .padding(.horizontal, 24).padding(.vertical, 12)
            .background(statusColor)
            .foregroundColor(.white)
            .cornerRadius(12)
            .accessibilityIdentifier("toggleButton")
            .accessibilityLabel("Hydration status")
            .accessibilityValue(hydrated ? "hydrated" : "parched")

            Text("Welcome to the simple 'Drink Water' app where you can tap a button to become hydrated. :)")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .accessibilityIdentifier("welcomeText")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.2, green: 0.3, blue: 0.4).ignoresSafeArea())
    }
}

#Preview { ContentView() }
