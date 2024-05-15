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
    }

}

#Preview {
    ContentView()
        .modelContainer(for: FloraCard.self, inMemory: true)
}
