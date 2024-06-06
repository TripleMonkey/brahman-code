//
//  CardModel.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/9/24.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable {
    var id: Int
    var name: String
    var element: Element
    var gender: Gender
    var planet: Planet
    var powers: [String]
    var color = colorGradient
    var image: String
    var rarity: Rarity
    var isLocked: Bool = true
    
    
    
}
var colorGradient: LinearGradient {
    LinearGradient(colors: [.darkGreen, .minty, .blu], startPoint: .topLeading, endPoint: .bottomTrailing)
        
}
enum Planet: String {
    case mercury, venus, gaea, mars, jupiter, saturn, uranus, neptune, moon
    
}

enum Gender: String {
    case masculine, feminine
}

enum Element: String {
    case air, water, earth, fire
}

enum Rarity: String {
    case common, rare, mythic
}

