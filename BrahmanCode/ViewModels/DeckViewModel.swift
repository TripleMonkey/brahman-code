//
//  CardObject.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/9/24.


import Foundation
import Observation

class DeckViewModel: ObservableObject {
    
    @Published var cards: [CardModel]
    // Singleton pattern
    static var shared = DeckViewModel()
    private init() { 
        cards = [
               CardModel(id: 0, name: "Dandelion", element: Element.Air, gender: Gender.Masculine, planet: Planet.Jupiter, powers: ["Wishes", "Spirit-Calling"], image: "Dandelion", rarity: .Common, isLocked: true ),
               CardModel(id: 1, name: "Mandrake", element: .Fire, gender: .Masculine, planet: .Mercury, powers: ["Money", ""], image: "Mandrake", rarity: .Common, isLocked: false),
               CardModel(id: 2, name: "Milk Thistle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Hex-Break", "Protection", "Healing"], image: "Milk Thistle", rarity: .Common, isLocked: true),
               CardModel(id: 3, name: "Pokeweed", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Courage", "Hex-Break"], image: "Pokeweed", rarity: .Rare, isLocked: false),
               CardModel(id: 4, name: "Plantain", element: .Earth, gender: .Feminine, planet: .Venus, powers: ["Protection", "Strength"], image: "Plantain", rarity: .Common, isLocked: true),
               CardModel(id: 5, name: "Wild Onion", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Money", "Healing"], image: "Wild Onion", rarity: .Common, isLocked: false),
               CardModel(id: 6, name: "Black Mustard", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Fertility", "Mental"], image: "Black Mustard", rarity: .Rare, isLocked: true),
               CardModel(id: 7, name: "Mullein", element: .Fire, gender: .Feminine, planet: .Saturn, powers: ["Courage", "Love"], image: "Mullein", rarity: .Mythic, isLocked: false),
               CardModel(id: 8, name: "Mulberry", element: .Air, gender: .Masculine, planet: .Mercury, powers: ["Protection", "Strength"], image: "Mulberry", rarity: .Rare, isLocked: true),
               CardModel(id: 9, name: "Mugwort", element: .Earth, gender: .Feminine, planet: .Venus, powers: ["Psychic", "Dreams"], image: "Mugwort", rarity: .Common, isLocked: false),
               CardModel(id: 10, name: "Honeysuckle", element: .Earth, gender: .Masculine, planet: .Jupiter, powers: ["Money", "Protection"], image: "Honeysuckle", rarity: .Mythic, isLocked: true),
               CardModel(id: 11, name: "American Elderberry", element: .Water, gender: .Feminine, planet: .Venus, powers: ["Sleep", "Prosperity"], image: "Elderberry", rarity: .Mythic, isLocked: false),
               CardModel(id: 12, name: "Chickweed", element: .Water, gender: .Feminine, planet: .Moon, powers: ["Fidelity", "Love"], image: "Chickweed", rarity: .Common, isLocked: true),
               CardModel(id: 13, name: "Fleabane", element: .Water, gender: .Feminine, planet: .Venus, powers: ["Protection", "Chastity"], image: "Fleabane", rarity: .Common, isLocked: false),
               CardModel(id: 14, name: "Carrot", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Fertility", "Lust"], image: "Carrot", rarity: .Common, isLocked: true),
               CardModel(id: 15, name: "Burdock", element: .Water, gender: .Feminine, planet: .Venus, powers: ["Protection", "Healing"], image: "Burdock", rarity: .Rare, isLocked: false),
               CardModel(id: 16, name: "Yarrow", element: .Water, gender: .Feminine, planet: .Venus, powers: ["Courage", "Love"], image: "Yarrow", rarity: .Common, isLocked: true),
               CardModel(id: 17, name: "Stinging Nettle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Protection", "Strength"], image: "Stinging Nettle", rarity: .Common, isLocked: false),
               CardModel(id: 18, name: "Red Clover", element: .Fire, gender: .Masculine, planet: .Mercury, powers: ["Luck", "Success"], image: "Red Clover", rarity: .Common, isLocked: true),
               CardModel(id: 19, name: "Sumac", element: .Fire, gender: .Masculine, planet: .Jupiter, powers: ["Harmony", "Luck"], image: "Sumac", rarity: .Mythic, isLocked: false),
               CardModel(id: 20, name: "Violet", element: .Water, gender: .Feminine, planet: .Venus, powers: ["Dreams", "Creativity"], image: "Violet", rarity: .Common, isLocked: true)

           ]
    }

    // Starter deck

    
  
}
