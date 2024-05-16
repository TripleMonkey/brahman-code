//
//  ContentView.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject var viewModel = FrameHandler()
    private let frame = Text("frame")

    var body: some View {
        FrameView(image: viewModel.frame, label: frame)
        
        TabView {
            DeckView()
                .tabItem {
                    VStack {
                        Image(systemName: "chart.bar.doc.horizontal.fill")
                        Text("Deck")
                    }
                }
            ExploreView()
                .tabItem {
                    VStack {
                        Image(systemName: "camera")
                        Text("Explore")
                    }
                }
            NavView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Navigation")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: FloraCard.self, inMemory: true)
}
