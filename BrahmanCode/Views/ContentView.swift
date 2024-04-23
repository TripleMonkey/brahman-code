//
//  ContentView.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var floraCards: [FloraCard]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(floraCards) { floraCard in
                    NavigationLink {
                        Text("Card at \(floraCard.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(floraCard.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = FloraCard(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(floraCards[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: FloraCard.self, inMemory: true)
}
