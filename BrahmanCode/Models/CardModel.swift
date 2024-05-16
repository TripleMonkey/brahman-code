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
    var powers: String
    var color = colorGradient
    var image: String
    
}
var colorGradient: LinearGradient {
    LinearGradient(colors: [.darkGreen, .minty, .blu], startPoint: .topLeading, endPoint: .bottomTrailing)
        
}
enum Planet: String {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Moon
    
}

enum Gender: String {
    case Masculine, Feminine
}

enum Element: String {
    case Air, Water, Earth, Fire
}

