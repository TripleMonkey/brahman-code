//
//  ExploreView.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/1/24.
//

import SwiftUI
import CoreImage

struct ExploreView: View {
    @StateObject var viewModel = FrameHandler()
    private let frame = Text("frame")
    

    
    var body: some View {
        
        
    FrameView(image: viewModel.frame, label: frame)
    }
}
        

#Preview {
    ExploreView()
}
