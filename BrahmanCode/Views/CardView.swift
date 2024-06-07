//
//  CardView.swift
//  HerbaDex
//
//  Created by Nigel Krajewski on 6/5/24.
//

import SwiftUI

struct CardView: View {

    @ObservedObject var deckVM = DeckViewModel.shared

    var body: some View {
        if deckVM.currentCard.isLocked {
            Image("cardBack")
                .resizable()
                .scaledToFit()

        } else {
            Image("cardBack")
                .resizable()
                .scaledToFit()
                .opacity(1.0)
                .padding()
                .overlay(content: {
                    VStack {
                        CardHeaderView()
                        Image(deckVM.currentCard.image)
                            .resizable()
                            .scaledToFit()
                        PlantDetailView()
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
    CardView()
}
