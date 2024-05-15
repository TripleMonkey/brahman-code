//
//  FloraCardModel.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import Foundation
import SwiftData

@Model
final class FloraCard {
    let dateAdded: Date
    let floraName: String


    init(dateAdded: Date, floraName: String) {
        self.dateAdded = dateAdded
        self.floraName = floraName
    }
}
