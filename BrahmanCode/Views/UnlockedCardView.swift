//
//  UnlockedCardView.swift
//  HerbaDex
//
//  Created by Dashawn Morrow on 6/5/24.
//

import SwiftUI

struct UnlockedCardView: View {
    @State var item: CardModel

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(item.color)
            .shadow(color: .blu, radius: 15)
            .overlay(
                RoundedRectangle(cornerRadius: 9)
                    .stroke(.mint, lineWidth: 2)
            )
        VStack {
            HStack {
                Image(item.rarity.rawValue)
                    .resizable()
                    .frame(width: 20, height: 20)
                Text(item.name)
                    .font(.custom("Chalkduster SE", size: 18))
                Button {
                    // Action
                } label: {
                    Image(systemName: "info.circle")
                }
            }
            .foregroundStyle(.black)
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.orange)
                    .frame(width: 225, height: 35)
            }
            Image(item.image)
                .resizable()
                .frame(width: 200, height: 200)
                .padding()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.moss)
                VStack {
                    HStack {
                        Text("Element:")
                        Text(item.element.rawValue.capitalized)
                        Spacer()
                        Image(item.element.rawValue)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding([.top, .horizontal])
                    HStack {
                        Text("Gender: ")
                        Text(item.gender.rawValue.capitalized)
                        Spacer()
                        Image(item.gender.rawValue)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.horizontal)
                    HStack {
                        Text("Planet:  ")
                        Text(item.planet.rawValue.capitalized)
                        Spacer()
                        Image(item.planet.rawValue)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.horizontal)
                    HStack(alignment: .top) {
                        Text("Powers: ")
                        VStack(alignment: .leading) {
                            ForEach(item.powers, id: \.self) { power in
                                HStack {
                                    Text(power.capitalized)
                                    Spacer()
                                    Image(power)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .offset(x: 7)
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding([.bottom, .horizontal])
                }
                .font(.custom("Chalkboard SE", size: 15))
            }
        }
    }
}

#Preview {
    UnlockedCardView(item: CardModel(id: 1, name: "Dandelion", element: .Air, gender: .Masculine, planet: .Jupiter, powers: ["wishes", "invocation"], image: "dandelion", rarity: .Common, isLocked: false))
}
