//
//  LockedCardView.swift
//  HerbaDex
//
//  Created by Dashawn Morrow on 6/5/24.
//

import SwiftUI

struct LockedCardView: View {
    var cardBack = Image("card back")

    var body: some View {
        VStack {
            cardBack
                .resizable()
                .shadow(color: .red, radius: 15)
                .frame(width: 275, height: 460)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.red, lineWidth: 2)
                )
        }
    }
}

#Preview {
    LockedCardView()
}
