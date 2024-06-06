//
//  CardView.swift
//  HerbaDex
//
//  Created by Nigel Krajewski on 6/5/24.
//

import SwiftUI

struct CardView: View {

    @ObservedObject var deckVM = DeckViewModel.shared

    var card: CardModel

    var body: some View {
        if card.isLocked {
            Image("Card Back")
                .resizable()
                .scaledToFit()

        } else {
            Image("Card Back")
                .resizable()
                .scaledToFit()
                .opacity(1.0)
                .padding()
                .overlay(content: {
                    VStack {
                        CardHeaderView(cardTitle: card.name)
                        Image(card.image)
                            .resizable()
                            .scaledToFit()
                        PlantDetailView(card: card)
                            .padding(.bottom, 40)
                    }
                    .background(content: {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(LinearGradient(colors: [.blu, .minty, .darkGreen], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                            .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                            .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                            .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                            .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                            .padding()
                    })
                })
        }
    }
}
#Preview {
    CardView(card: CardModel(id: 2, name: "Milk Thistle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["Hex-Break", "Protection", "Healing"], image: "Milk Thistle", rarity: .Common, isLocked: true))
}
