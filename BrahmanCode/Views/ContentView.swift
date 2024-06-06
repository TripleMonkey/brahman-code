//
//  ContentView.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    var body: some View {
        
        
        TabView {
            Group {
                
                
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
//                ProfileView()
//                    .tabItem {
//                        VStack {
//                            Image(systemName: "person")
//                            Text("Profile")
//                        }
//                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            
 
            

        }
        
        .tint(Color.accentColor)
        
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: FloraCard.self, inMemory: true)
}
