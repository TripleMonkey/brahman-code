//
//  ExploreView.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/1/24.
//

import SwiftUI
import CoreImage


struct ExploreView: View {
    
    var body: some View {
        FrameView(classifier: ImageClassifier())
    }
}


#Preview {
    ExploreView()
}
