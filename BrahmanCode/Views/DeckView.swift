import SwiftUI

class Store: ObservableObject {
    @Published var items: [CardModel]
    
    var colorGradient: LinearGradient {
        LinearGradient(colors: [.darkGreen, .minty, .blu], startPoint: .top, endPoint: .bottom)
    }
    
    init() {
        items = []
        for i in 0...22 {
            let new = CardModel(id: i, name: "Item\(i)", element: .air, gender: .feminine, planet: .mars, powers: ["N/A"], color: colorGradient, image: "nil", rarity: .common, isLocked: false)
            items.append(new)
        }
    }
}

struct DeckView: View {
    @StateObject var store = Store()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    let question = "?????????"
    let cardBack = Image("Card Back")
    
    @State var cards: [CardModel] = [
        CardModel(id: 0, name: "Dandelion", element: .air, gender: Gender.masculine, planet: .jupiter, powers: ["wishes", "invocation"], image: "dandelion", rarity: .common),
        CardModel(id: 1, name: "Mandrake", element: .fire, gender: .masculine, planet: .mercury, powers: ["money", ""], image: "mandrake", rarity: .common),
        CardModel(id: 2, name: "Milk Thistle", element: .fire, gender: .masculine, planet: .mars, powers: ["hex break", "protection"], image: "milk thistle", rarity: .common),
        CardModel(id: 3, name: "Pokeweed", element: .fire, gender: .masculine, planet: .mars, powers: ["courage", "hex break"], image: "pokeweed", rarity: .rare),
        CardModel(id: 4, name: "Plantain", element: .earth, gender: .feminine, planet: .venus, powers: ["protection", "strength"], image: "plantain", rarity: .common, isLocked: false),
        CardModel(id: 5, name: "Wild Onion", element: .fire, gender: .masculine, planet: .mars, powers: ["money", "healing"], image: "wild onion", rarity: .common),
        CardModel(id: 6, name: "Black Mustard", element: .fire, gender: .masculine, planet: .mars, powers: ["fertility", "mental"], image: "black mustard", rarity: .rare),
        CardModel(id: 7, name: "Mullein", element: .fire, gender: .feminine, planet: .saturn, powers: ["courage", "love"], image: "mullein", rarity: .mythic),
        CardModel(id: 8, name: "Mulberry", element: .air, gender: .masculine, planet: .mercury, powers: ["protection", "strength"], image: "mulberry", rarity: .rare),
        CardModel(id: 9, name: "Mugwort", element: .earth, gender: .feminine, planet: .venus, powers: ["psychic", "dreams"], image: "mugwort", rarity: .common),
        CardModel(id: 10, name: "Honeysuckle", element: .earth, gender: .masculine, planet: .jupiter, powers: ["money", "protection"], image: "honeysuckle", rarity: .mythic),
        CardModel(id: 11, name: "American Elderberry", element: .water, gender: .feminine, planet: .venus, powers: ["sleep", "prosperity"], image: "elderberry", rarity: .mythic),
        CardModel(id: 12, name: "Chickweed", element: .water, gender: .feminine, planet: .moon, powers: ["fidelity", "love"], image: "chickweed", rarity: .common),
        CardModel(id: 13, name: "Fleabane", element: .water, gender: .feminine, planet: .venus, powers: ["protection", "chastity"], image: "fleabane", rarity: .common),
        CardModel(id: 14, name: "Carrot", element: .fire, gender: .masculine, planet: .mars, powers: ["fertility", "lust"], image: "carrot", rarity: .common),
        CardModel(id: 15, name: "Burdock", element: .water, gender: .feminine, planet: .venus, powers: ["protection", "healing"], image: "burdock", rarity: .rare),
        CardModel(id: 16, name: "Yarrow", element: .water, gender: .feminine, planet: .venus, powers: ["courage", "love"], image: "yarrow", rarity: .common),
        CardModel(id: 17, name: "Stinging Nettle", element: .fire, gender: .masculine, planet: .mars, powers: ["protection", "strength"], image: "stinging nettle", rarity: .common),
        CardModel(id: 18, name: "Red Clover", element: .fire, gender: .masculine, planet: .mercury, powers: ["luck", "success"], image: "red clover", rarity: .common),
        CardModel(id: 19, name: "Sumac", element: .fire, gender: .masculine, planet: .jupiter, powers: ["harmony", "luck"], image: "sumac", rarity: .mythic),
        CardModel(id: 20, name: "Violet", element: .water, gender: .feminine, planet: .venus, powers: ["dreams", "creativity"], image: "violet", rarity: .common)
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    ForEach(cards) { item in
                        HStack {
                            ZStack {
                                if item.isLocked {
                                    LockedCardView()
                                        .padding()
                                } else {
                                    UnlockedCardView(item: item)
                                        .padding()
                                }
                            }
                            .frame(width: 275, height: 450)
                            .scaleEffect(1.2 - abs(distance(item.id, itemCount: cards.count)) * 0.0375)
                            .opacity(1.2 - abs(distance(item.id, itemCount: cards.count)) * 0.8)
                            .offset(x: myXOffset(item.id, itemCount: cards.count, viewWidth: geometry.size.width), y: 0.8)
                            .zIndex(1.2 - abs(distance(item.id, itemCount: cards.count)) * 0.1)
                        }
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.9)
                .gesture(getDragGesture(viewWidth: geometry.size.width))
                
                HStack {
                    previousButton
                    Spacer()
                    nextButton
                }
                .padding(.bottom, 120)
                .padding(.horizontal)
                .frame(width: geometry.size.width, height: geometry.size.height * 0.1)
            }
        }
    }
    
    private var previousButton: some View {
        Button(action: {
            withAnimation {
                snappedItem = (snappedItem - 1).truncatingRemainder(dividingBy: Double(cards.count))
                draggingItem = snappedItem
            }
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.minty)
                    .frame(width: 90, height: 40)
                HStack {
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .tint(Color.moss)
                    Text("Prev")
                        .font(.subheadline)
                        .tint(Color.moss)
                }
            }
        }
    }
    
    private var nextButton: some View {
        Button(action: {
            withAnimation {
                snappedItem = (snappedItem + 1).truncatingRemainder(dividingBy: Double(cards.count))
                draggingItem = snappedItem
            }
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.minty)
                    .frame(width: 90, height: 40)
                HStack {
                    Text("Next")
                        .font(.subheadline)
                        .tint(.moss)
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .tint(.moss)
                }
            }
        }
    }
    
    private func getDragGesture(viewWidth: CGFloat) -> some Gesture {
        DragGesture()
            .onChanged { value in
                draggingItem = snappedItem + value.translation.width / 100
            }
            .onEnded { value in
                withAnimation {
                    let itemCount = Double(cards.count)
                    draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                    draggingItem = (draggingItem.truncatingRemainder(dividingBy: itemCount) + itemCount).truncatingRemainder(dividingBy: itemCount)
                    snappedItem = round(draggingItem)
                }
            }
    }
    
    private func distance(_ item: Int, itemCount: Int) -> Double {
        let dist = (draggingItem - Double(item)).truncatingRemainder(dividingBy: Double(itemCount))
        return dist >= 0 ? dist : dist + Double(itemCount)
    }
    
    private func myXOffset(_ item: Int, itemCount: Int, viewWidth: CGFloat) -> Double {
        let angle = Double.pi * 2 / Double(itemCount) * distance(item, itemCount: itemCount)
        return sin(angle) * (viewWidth / 2 - 125)
    }
}

#Preview {
    DeckView()
}
