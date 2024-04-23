//
//  DeckViewModel.swift
//  BrahmanCode
//
//  Created by Nigel Krajewski on 4/22/24.
//

import Foundation

class DeckViewModel: ObservableObject {

    // var to hold users deck of cards
    @Published var deck: [FloraCard] = []

}
