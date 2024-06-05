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
            NavView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Navigation")
                    }
                }
        }
        .background(Color.gray)
        .tint(Color.accentColor)
    }
}

#Preview {
    ContentView()
}
