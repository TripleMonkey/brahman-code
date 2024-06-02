//
//  Classifier.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 5/22/24.
//

import CoreML
import Vision
import CoreImage

struct Classifier {

    private(set) var results: String?

    mutating func detect(ciImage: CIImage) {

        guard let model = try? VNCoreMLModel(for: BrahmanImageIdentifier_2(configuration: MLModelConfiguration()).model)
        else {
            return
        }
        model.inputImageFeatureName = "imageContent"

        let request = VNCoreMLRequest(model: model)

        let handler = VNImageRequestHandler(ciImage: ciImage, options: [:])

        try? handler.perform([request])

        guard let results = request.results as? [VNClassificationObservation] else {
            return
        }

        if let firstResult = results.first {
            self.results = firstResult.identifier
        }

    }

}


