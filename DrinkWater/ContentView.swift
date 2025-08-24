//
//  ContentView.swift
//  DrinkWater
//
//  Created by Ann Ubaka on 8/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonText = "Parched."
    @State private var alt = false
    
    var body: some View {
        VStack {
                
            Button(action:
                    {
                if alt == false {
                    self.buttonText = "Hydrated."
                    alt = true
                } else {
                    self.buttonText = "Parched."
                    alt = false
                }
            }, label: {
                if alt == false {
                    Text(buttonText)
                    .font(.title)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                } else {
                    Text(buttonText)
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            })
            .padding()
            Text("Welcome to the simple 'Drink Water' app where you can tap a button to become hydrated. :)")
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Expand to fill screen
        .background(Color(red: 0.2, green: 0.3, blue: 0.4).ignoresSafeArea())

    }

}

#Preview {
    ContentView()
}
