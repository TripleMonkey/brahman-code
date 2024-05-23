//
//  ImageClassifier.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 5/22/24.
//

import SwiftUI


class ImageClassifier: ObservableObject {

    @Published private var classifier = Classifier()

    var imageClass: String? {
        classifier.results
    }

    // MARK: Intent(s)
    func detect(uiImage: UIImage) {
        guard let ciImage = CIImage (image: uiImage) else { return }
        classifier.detect(ciImage: ciImage)
    }
}

