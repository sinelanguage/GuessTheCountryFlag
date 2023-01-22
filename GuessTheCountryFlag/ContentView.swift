//
//  ContentView.swift
//  GuessTheCountryFlag
//
//  Created by Adam Winick on 2023-01-19.
//

import SwiftUI

struct ContentView: View {
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
                Color.white
                Color.blue
            }
            Text("Sylvia")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        // this won't fill the whole view
        // z stack works like z index
        // .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
