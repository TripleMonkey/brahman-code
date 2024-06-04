//
//  ContentView.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @StateObject private var vm = LocationsViewModel()

    var body: some View {


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
            LocationsView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Navigation")
                    }
                }
        }
        .environmentObject(vm)
    }

}

#Preview {
    ContentView()
        .modelContainer(for: FloraCard.self, inMemory: true)
}
