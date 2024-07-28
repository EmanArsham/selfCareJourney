//
//  ContentView.swift
//  button
//
//  Created by eman arsham on 22/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                ZStack {
                    Color.pastelPink
                        .ignoresSafeArea()
                    VStack {
                                            
                        Text("Self Care Journey")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        Spacer().frame(height: 30) // Adds space between the title and the button
                        NavigationLink(destination: MissionsView()) {
                            Text("View my Goals")
                                
                                .font(.title)
                                .padding(20)
                                .background(Color.pink.opacity(0.7))
                                .cornerRadius(20)
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Define pastel colors as extensions of Color
extension Color {
    static let pastelGreen = Color(red: 0.67, green: 0.87, blue: 0.69)
    static let pastelPink = Color(red: 1.0, green: 0.82, blue: 0.86)
    static let pastelBlue = Color(red: 0.68, green: 0.84, blue: 0.9)
}
