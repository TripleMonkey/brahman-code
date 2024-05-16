//
//  CameraFrameView.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/30/24.


import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private var label = Text("frame")

    init(image: CGImage? = nil, label: Text = Text("frame")) {
        self.image = image
        self.label = label
    }

    var body: some View {
        if let image = image {
            Image(image, scale: 1.0, orientation: .up, label: label)
        } else {
            Color.black
        }
    }
}

#Preview {
    FrameView()
}
