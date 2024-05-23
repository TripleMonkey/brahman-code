//
//  DeckView.swift
//  CarouselTingz
//
//  Created by Dashawn Morrow on 5/1/24.
//

import SwiftUI





class Store: ObservableObject {
    @Published var items: [CardModel]
    
    var colorGradient: LinearGradient {
        LinearGradient(colors: [.darkGreen, .minty, .blu], startPoint: .top, endPoint: .bottom)
        
    }
    init() {
        items = []
        for i in 0...22 {
            let new = CardModel(id: i, name: "Item\(i)", element: .Air, gender: .Feminine, planet: .Mars, powers: ["N/A"], color: colorGradient, image: "nil")
            items.append(new)
        }
    }
    
}

struct DeckView: View {
    
    @StateObject var store = Store()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    @State var activeIndex: Int = 0
    var cardObjects = CardObject()
    
    var body: some View {
        
        ZStack {
            
            
            ForEach(cardObjects.cards) { item in
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(item.color)
                        .shadow(color: .blu, radius: 15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 9)
                                .stroke(.mint, lineWidth: 2)
                        )
                            
                    VStack {
                        Text(item.name)
                            .background(){
                                RoundedRectangle(cornerRadius:30)
                                    .fill(Color.orange)
                                    .frame(width:160, height: 35)
                            }
                        Image(item.image)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .padding()
                        
                        ZStack {
                            // Green Background
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Element:")
                                    Text("Gender:")
                                    Text("Planet:")
                                    Text("Powers:")
                            }
                                .font(.subheadline)
                                .padding(.bottom)
                                VStack(alignment: .leading) {
                                    Text(item.element.rawValue)
                                    Text(item.gender.rawValue)
                                    Text(item.planet.rawValue)
                                    Text(item.powers.joined(separator: ", "))

                                }
                                .font(.subheadline)
                                .padding(.bottom)
                                VStack {
                                    Image("heart")
                                        .resizable() .frame(width: 20, height: 20)
                                }
                            }
                            .background() {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.moss)
                                    .frame(width:250, height:120)
                            }
                        }
                    }
                    
                }
                .frame(width: 250, height: 400)
                .scaleEffect(1.2 - abs(distance(item.id)) * 0.0375 )
                .opacity(1.2 - abs(distance(item.id)) * 0.8)
                .offset(x: myXOffset(item.id), y: 0)
                .zIndex(1.2 - abs(distance(item.id)) * 0.1)
            }
        }
        .gesture(getDragGesture())
        .onTapGesture {
            //move card to center
        }
    }
    
    private func getDragGesture() -> some Gesture {
        
        DragGesture()
            .onChanged { value in
                draggingItem = snappedItem + value.translation.width / 100
            }
            .onEnded { value in
                withAnimation {
                    draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                    draggingItem = round(draggingItem).remainder(dividingBy: Double(store.items.count))
                    snappedItem = draggingItem
                    
                    //Get the active Item index
                    self.activeIndex = store.items.count + Int(draggingItem)
                    if self.activeIndex > store.items.count || Int(draggingItem) >= 0 {
                        self.activeIndex = Int(draggingItem)
                    }
                }
            }
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(store.items.count))
    }
    
    func myXOffset(_ item: Int) -> Double {
        let angle = Double.pi * 2 / Double(store.items.count) * distance(item)
        return sin(angle) * 200
    }
}
#Preview {
    DeckView()
        .previewInterfaceOrientation(.landscapeLeft)
}
