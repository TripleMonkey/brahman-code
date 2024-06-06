//
//  CardHeaderView.swift
//  HerbaDex
//
//  Created by Nigel Krajewski on 6/5/24.
//

import SwiftUI

struct CardHeaderView: View {

    @ObservedObject var DeckVM = DeckViewModel.shared

    let cardTitle: String

    var body: some View {
        HStack {
            Spacer()
            Text(cardTitle)
                .padding()
                .padding([.leading, .trailing], 40)
                .font(.custom("ChalkDuster", size: 14, relativeTo: .title))
                .background {
                    Capsule()
                        .foregroundColor(.orange)
                }
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: -0.1, y: -0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
                .shadow(color: .white, radius: 0.1, x: 0.1, y: 0.1)
            Spacer()
        }
    }
}

#Preview {
    ZStack {
        RoundedRectangle(cornerRadius: 25)
            .foregroundStyle(.gray)
        CardHeaderView(cardTitle: "Dandelion")
    }
}
