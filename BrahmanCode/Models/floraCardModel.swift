//
//  Item.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import Foundation
import SwiftData

@Model
final class FloraCard {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
