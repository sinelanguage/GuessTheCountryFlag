//
//  ContentView.swift
//  GuessTheCountryFlag
//
//  Created by Adam Winick on 2023-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
//        VStack(alignment: .leading, spacing: 20) {
//            Text("Hello, world!")
//            Text("Hello, world2!")
//
//            HStack(alignment: .top , spacing: 20) {
//                Text("Hello, world!")
//                Text("Hello, world2")
//                Text("Hello, world2")
//            }
//        }
        ZStack {
            VStack(spacing: 0) {
//                Color.white
//                Color.blue
                LinearGradient(
                    gradient:
                        Gradient(
                            stops: [
                                .init(color: .blue, location: 0.45),
                                .init(color: .red, location: 0.55)
                            ]
                        ),
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
            VStack {
                Text("Sylvia")
                    .foregroundStyle(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                HStack {
                    Button{
                        showingAlert.toggle()
                    }
                    label: {
                        Label("Hello", systemImage: "pencil")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.mint)
                    .alert("Important alert", isPresented: $showingAlert){}
                    Button("Button 1"){}.buttonStyle(.bordered)
                    Button("Button 2", role: .destructive){}.buttonStyle(.bordered)
                }
                HStack {
                    Button("Button 3"){}.buttonStyle(.borderedProminent)
                    Button("Button 4", role: .destructive){}
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
