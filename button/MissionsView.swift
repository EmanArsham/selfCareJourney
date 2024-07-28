//
//  missions.swift
//  button
//
//  Created by eman arsham on 22/07/2024.
//

import SwiftUI

struct MissionsView: View {
    @State private var missions = [
            Mission(name: "Drink Water", isChecked: false),
            Mission(name: "Take a Walk", isChecked: false),
            Mission(name: "Read a Book", isChecked: false),
            Mission(name: "Meditate", isChecked: false)
        ]
        
        var body: some View {
            ZStack {
                Color.pastelPink
                    .ignoresSafeArea()
                
                VStack {
                    Text("Self Care Goals")
                        .font(.largeTitle)
                        .foregroundColor(.pink)
                        .fontWeight(.bold)
//                        .padding()
                    
                    List {
                        ForEach(missions.indices, id: \.self) { index in
                            NavigationLink(destination: MissionDetailView(mission: $missions[index])) {
                                HStack {
                                    Text(missions[index].name)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                        
                                    
                                    if missions[index].isChecked {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                    }
                                }
                               
                            }
                        }
                        .listRowBackground(Color.pastelPink)
                    }
                 
                }
            }
            
            
        }
}

struct MissionsView_Previews: PreviewProvider {
    static var previews: some View {
        MissionsView()
    }
}

struct Mission: Identifiable {
    var id = UUID()
    var name: String
    var isChecked: Bool
}


