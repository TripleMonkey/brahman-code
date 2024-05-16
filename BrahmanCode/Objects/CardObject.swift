//
//  CardObject.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/9/24.


import Foundation
import Observation

@Observable class CardObject {
    
    var cards: [CardModel] = [
        CardModel(id: 0, name: "Yarrow", element: Element.Air, gender: Gender.Masculine, planet: Planet.Jupiter, powers: "Wishes, Calling Spirits", image: "yarrow"),
        CardModel(id: 1, name: "Mandrake", element: .Fire, gender: .Masculine, planet: .Mercury, powers: "Money", image: "mandrake"),
        CardModel(id: 2, name: "Milk Thistle", element: .Fire, gender: .Masculine, planet: .Mars, powers: "Hex-Breaking, Protection, Healing", image: "milkThistle"),
        CardModel(id: 3, name: "Pokeweed", element: .Fire, gender: .Masculine, planet: .Mars, powers: "Courage, Hex-Breaking", image: "pokeweed"),
        CardModel(id: 4, name: "Plantain", element: .Earth, gender: .Feminine, planet: .Venus, powers: "Healing, Protection, Strength", image: "plantain"),
        CardModel(id: 5, name: "Wild Onion", element: .Fire, gender: .Masculine, planet: .Mars, powers: "Money, Healing, Protection, Dreams", image: "wildOnion"),
        CardModel(id: 6, name: "Black Mustard", element: .Fire, gender: .Masculine, planet: .Mars, powers: "Fertility, Mental Powers, Protection", image: "blackMustard"),
        CardModel(id: 7, name: "Mullein", element: .Fire, gender: .Feminine, planet: .Saturn, powers: "Courage, Love, Health", image: "mullein"),
        CardModel(id: 8, name: "Mulberry", element: .Air, gender: .Masculine, planet: .Mercury, powers: "Protection, Strength", image: "mulberry"),
        CardModel(id: 9, name: "Mugwort", element: .Earth, gender: .Feminine, planet: .Venus, powers: "Psychic Abilities, Astral Projection, Dreams", image: "mugwort"),
        CardModel(id: 10, name: "Honeysuckle", element: .Earth, gender: .Masculine, planet: .Jupiter, powers: "Money, Psychic Abiilities, Protection", image: "honeysuckle"),
        CardModel(id: 11, name: "American Elderberry", element: .Water, gender: .Feminine, planet: .Venus, powers: "Sleep, Prosperity, Healing", image: "elderberry"),
        CardModel(id: 12, name: "Chickweed", element: .Water, gender: .Feminine, planet: .Moon, powers: "Fidelity, Love", image: "chickweed"),
        CardModel(id: 13, name: "Fleabane", element: .Water, gender: .Feminine, planet: .Venus, powers: "Protection, Chastity", image: "fleabane"),
        CardModel(id: 14, name: "Carrot", element: .Fire, gender: .Masculine, planet: .Mars, powers: "Fertility, Lust", image: "carrot")
    ]
}
