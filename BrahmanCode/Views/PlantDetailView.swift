//
//  PlantDetailView.swift
//  HerbaDex
//
//  Created by Nigel Krajewski on 6/5/24.
//

import SwiftUI

struct PlantDetailView: View {

    @ObservedObject var deckVM = DeckViewModel.shared

    let frameMultiplier = 0.06

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("Element:")
                    .padding(.bottom)
                Text("Gender:")
                    .padding(.bottom)
                Text("Planet:")
                    .padding(.bottom)
                Text("Powers:")
            }
            .fontWeight(.bold)

            VStack(alignment: .leading) {
                Text(deckVM.currentCard.element.rawValue)
                    .padding(.bottom)
                Text(deckVM.currentCard.gender.rawValue)
                    .padding(.bottom)
                Text(deckVM.currentCard.planet.rawValue)
                    .padding(.bottom)
                HStack {
                    ForEach(deckVM.currentCard.powers, id: \.self) { power in
                        Image(power)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .fontWeight(.bold)

            VStack(alignment: .trailing) {
                Image(deckVM.currentCard.element.rawValue.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                Image(deckVM.currentCard.gender.rawValue.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                Image(deckVM.currentCard.planet.rawValue.lowercased())
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
            }
        }
        .foregroundStyle(Color.white)
        .font(.headline)
        .minimumScaleFactor(0.001)
        .font(.headline)
        .padding()
        .background(content: {
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color.moss)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
        })
        .fixedSize()

    }
}


#Preview {
    PlantDetailView()
}
