//
//  BrahmanCodeApp.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import SwiftUI
import SwiftData

@main
struct BrahmanCodeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            FloraCard.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
        .modelContainer(sharedModelContainer)
    }
}
