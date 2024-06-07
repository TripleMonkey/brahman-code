//
//  CardObject.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/9/24.


import Foundation
import Observation

class DeckViewModel: ObservableObject {

    @Published var cards: [CardModel]
    @Published var currentCard: CardModel
    @Published var snappedItem = 0.0
    @Published var draggingItem = 0.0


    // Singleton pattern
    static var shared = DeckViewModel()
    private init() {
        cards = [
            CardModel(id: 18, name: "Clover", element: .Fire, gender: .Masculine, planet: .Mercury, powers: ["luck", "success"], image: "redClover", rarity: .Common, isLocked: true),
            CardModel(id: 0, name: "Dandelion", element: Element.Air, gender: Gender.Masculine, planet: Planet.Jupiter, powers: ["wishes", "spiritCalling"], image: "dandelion", rarity: .Common, isLocked: true ),
            CardModel(id: 1, name: "Mandrake", element: .Fire, gender: .Masculine, planet: .Mercury, powers: ["money", ""], image: "mandrake", rarity: .Common, isLocked: true),
            CardModel(id: 2, name: "MilkThistle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["hexBreak", "protection", "healing"], image: "milkThistle", rarity: .Common, isLocked: true),
            CardModel(id: 3, name: "Pokeweed", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["courage", "hexBreak"], image: "pokeweed", rarity: .Rare, isLocked: false),
            CardModel(id: 4, name: "Plantain", element: .Earth, gender: .Feminine, planet: .Venus, powers: ["protection", "strength"], image: "plantain", rarity: .Common, isLocked: true),
            CardModel(id: 5, name: "Wild Onion", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["money", "healing"], image: "wildOnion", rarity: .Common, isLocked: true),
            CardModel(id: 6, name: "Black Mustard", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["fertility", "mental"], image: "blackMustard", rarity: .Rare, isLocked: true),
            CardModel(id: 7, name: "Mullein", element: .Fire, gender: .Feminine, planet: .Saturn, powers: ["courage", "love"], image: "mullein", rarity: .Mythic, isLocked: true),
            CardModel(id: 8, name: "Mulberry", element: .Air, gender: .Masculine, planet: .Mercury, powers: ["protection", "strength"], image: "mulberry", rarity: .Rare, isLocked: true),
            CardModel(id: 9, name: "Mugwort", element: .Earth, gender: .Feminine, planet: .Venus, powers: ["psychic", "dreams"], image: "mugwort", rarity: .Common, isLocked: true),
            CardModel(id: 10, name: "Honeysuckle", element: .Earth, gender: .Masculine, planet: .Jupiter, powers: ["money", "protection"], image: "honeysuckle", rarity: .Mythic, isLocked: true),
            CardModel(id: 11, name: "American Elderberry", element: .Water, gender: .Feminine, planet: .Venus, powers: ["sleep", "prosperity"], image: "elderberry", rarity: .Mythic, isLocked: true),
            CardModel(id: 12, name: "Chickweed", element: .Water, gender: .Feminine, planet: .Moon, powers: ["fidelity", "love"], image: "chickweed", rarity: .Common, isLocked: true),
            CardModel(id: 13, name: "Fleabane", element: .Water, gender: .Feminine, planet: .Venus, powers: ["protection", "chastity"], image: "fleabane", rarity: .Common, isLocked: true),
            CardModel(id: 14, name: "Carrot", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["fertility", "lust"], image: "carrot", rarity: .Common, isLocked: true),
            CardModel(id: 15, name: "Burdock", element: .Water, gender: .Feminine, planet: .Venus, powers: ["protection", "healing"], image: "burdock", rarity: .Rare, isLocked: true),
            CardModel(id: 16, name: "Yarrow", element: .Water, gender: .Feminine, planet: .Venus, powers: ["courage", "love"], image: "yarrow", rarity: .Common, isLocked: true),
            CardModel(id: 17, name: "Stinging Nettle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["protection", "strength"], image: "stingingNettle", rarity: .Common, isLocked: true),
            CardModel(id: 19, name: "Sumac", element: .Fire, gender: .Masculine, planet: .Jupiter, powers: ["harmony", "luck"], image: "sumac", rarity: .Mythic, isLocked: true),
            CardModel(id: 20, name: "Violet", element: .Water, gender: .Feminine, planet: .Venus, powers: ["dreams", "creativity"], image: "violet", rarity: .Common, isLocked: true)

        ]
        currentCard = CardModel(id: 0, name: "Dandelion", element: Element.Air, gender: Gender.Masculine, planet: Planet.Jupiter, powers: ["wishes", "spiritCalling"], image: "dandelion", rarity: .Common, isLocked: true )
    }

    // Starter deck



}
