//
//  PlantPredictionModel.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 5/2/24.
//

import CoreML
import Foundation
import Vision

class PlantPredictionModel {

    let identifier: BrahmanIdentifier = BrahmanIdentifier(model: MLModel())
    var model: MLModel


    init() {
        do {
            self.model = try MLModel(contentsOf: BrahmanIdentifier.urlOfModelInThisBundle)
        } catch {
            self.model = MLModel()
            print(error.localizedDescription)
        }

    }

    func plantPridiction() {

    }

}
