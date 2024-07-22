//
// Lightning
// ContentView.swift
//
// Created by Reyna Myers on 21/7/24
//
// Copyright ©2024 DoorHinge Apps.
//


import SwiftUI

struct ContentView: View {
    @State var rain = true
    @State var lightning = true
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(hex: "6178B5"), Color(hex: "445268")], startPoint: .top, endPoint: .bottom)
            
            if lightning {
                LightningView()
            }
            if rain {
                Rain()
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Button {
                        lightning.toggle()
                    } label: {
                        ZStack {
                            Color(lightning ? .systemBlue: .gray)
                            
                            Text("Lightning")
                                .foregroundColor(.white)
                                
                        }.frame(width: 100, height: 40)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                        .frame(width: 10)
                    
                    Button {
                        rain.toggle()
                    } label: {
                        ZStack {
                            Color(rain ? .systemBlue: .gray)
                            
                            Text("Rain")
                                .foregroundColor(.white)
                                
                        }.frame(width: 100, height: 40)
                            .cornerRadius(10)
                    }
                }.padding(20)
            }
        }.ignoresSafeArea()
    }
}




extension Bool {
    /// Generate a random Bool returning true with the specified probability
    static func random(probability: Double) -> Bool {
        return Double.random(in: 0..<1) < probability
    }
}



#Preview {
    ContentView()
}
