import SwiftUI
import UIKit


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
                .environmentObject(vm)
                .toolbarBackground(.visible, for: .tabBar)
                .tint(Color.accentColor)
        }
    }
}

#Preview {
    ContentView()
}
