//
//  Classifier.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 5/22/24.
//


import CoreImage
import CoreML
import Vision
import SwiftUI

struct Classifier {

    private(set) var result: String?

    @ObservedObject var deck = DeckViewModel.shared

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
            self.result = firstResult.identifier
            var cardIndex = 0
            for card in deck.cards {
                if firstResult.identifier == card.name.lowercased() {
                    deck.cards[cardIndex].isLocked = false
                    deck.currentCard = deck.cards[cardIndex]
                    print(deck.cards[cardIndex].name)
                }
                cardIndex += 1
            }


        }

    }

}


