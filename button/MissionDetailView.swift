//
//  MissionDetailView.swift
//  button
//
//  Created by eman arsham on 28/07/2024.
//

import SwiftUI

struct MissionDetailView: View {
    @Binding var mission: Mission
        
    var body: some View {
        ZStack{
            Color.pastelPink
                .ignoresSafeArea()
            VStack {
                Text("Goal Details")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .fontWeight(.bold)
                Spacer().frame(height: 50) 
                
                Text(mission.name)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .padding()
                
                
                Button(action: {
                    mission.isChecked.toggle()
                }) {
                    HStack {
                        Image(systemName: mission.isChecked ? "checkmark.square.fill" : "square")
                        Text(mission.isChecked ? "Undo Check" : "Complete Mission")
                    }
                    .padding()
                    .background(Color.pink.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()
            }
            
        }
    }
}

struct MissionDetailView_Previews: PreviewProvider {
    static var previews: some View {
            MissionDetailView(mission: .constant(Mission(name: "Sample Mission", isChecked: false)))
        }
}
