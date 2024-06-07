import SwiftUI

struct DeckView: View {
    @ObservedObject var deckVM = DeckViewModel.shared
    let cardBack = Image("Card Back")

    var currentCard: CardModel = CardModel(id: 2, name: "milkThistle", element: .Fire, gender: .Masculine, planet: .Mars, powers: ["hexBreak", "protection", "healing"], image: "milkThistle", rarity: .Common, isLocked: true)

    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    ForEach(deckVM.cards) { card in
                        CardView()
                            .padding()
                            .padding(.trailing, 30)
                            .scaleEffect(1 - abs(distance(card.id, itemCount: deckVM.cards.count)) * 0.0375)
                            .opacity(2 - abs(distance(card.id, itemCount: deckVM.cards.count)) * 0.8)
                            .offset(x: myXOffset(card.id, itemCount: deckVM.cards.count, viewWidth: geometry.size.width), y: 0)
                            .zIndex(1.2 - abs(distance(card.id, itemCount: deckVM.cards.count)) * 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                            .shadow(color: .black, radius: 0.1, x: 0.1, y: 0.1)
                    }
                }

                .padding()
                .gesture(getDragGesture(viewWidth: geometry.size.width))
            }

        }
    }
        private func getDragGesture(viewWidth: CGFloat) -> some Gesture {
            DragGesture()
                .onChanged { value in
                    deckVM.draggingItem = deckVM.snappedItem + value.translation.width / 100
                    // DEBUG
                    print(deckVM.currentCard.name)
                }
                .onEnded { value in
                    withAnimation {
                        let cardCount = Double(deckVM.cards.count)
                        deckVM.draggingItem = deckVM.snappedItem + value.predictedEndTranslation.width / 100
                        deckVM.draggingItem = (deckVM.draggingItem.truncatingRemainder(dividingBy: cardCount) + cardCount).truncatingRemainder(dividingBy: cardCount)
                        deckVM.snappedItem = round(deckVM.draggingItem)
                        var index = Int(deckVM.snappedItem)
                        if index < deckVM.cards.count {
                            deckVM.currentCard = deckVM.cards[Int(deckVM.snappedItem)]
                        } else {
                            index = 0
                            deckVM.currentCard = deckVM.cards[0]
                            // DEBUG
                            print(deckVM.currentCard.name)
                        }
                    }
                }
        }

        private func distance(_ item: Int, itemCount: Int) -> Double {
            let dist = (DeckViewModel.shared.draggingItem - Double(item)).truncatingRemainder(dividingBy: Double(itemCount))
            return dist >= 0 ? dist : dist + Double(itemCount)
        }

        private func myXOffset(_ item: Int, itemCount: Int, viewWidth: CGFloat) -> Double {
            let angle = Double.pi * 2 / Double(itemCount) * distance(item, itemCount: itemCount)
            return sin(angle) * (viewWidth / 2 - 125)
        }
    }

    #Preview {
        DeckView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
