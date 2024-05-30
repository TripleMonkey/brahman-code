import SwiftUI

class Store: ObservableObject {
    @Published var items: [CardModel]
    
    var colorGradient: LinearGradient {
        LinearGradient(colors: [.darkGreen, .minty, .blu], startPoint: .top, endPoint: .bottom)
    }
    
    init() {
        items = []
        for i in 0...22 {
            let new = CardModel(id: i, name: "Item\(i)", element: .Air, gender: .Feminine, planet: .Mars, powers: ["N/A"], color: colorGradient, image: "nil", rarity: .Common, isLocked: false)
            items.append(new)
        }
    }
}

struct DeckView: View {
    @StateObject var store = Store()
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    var cardObjects = CardObject()
    var question = "?????????"
    
    
    
    var body: some View {
        
        GeometryReader { geometry in
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
                            Text(item.isLocked ?  question : item.name)
                                .foregroundStyle(.black)
                                .background {
                                    RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.orange)
                                        .frame(width: 160, height: 35)
                                }
                            Image(item.isLocked ? question :  item.image)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .padding()
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundStyle(.moss)
                                
                                VStack {
                                    
                                    HStack {
                                        Text("Element:")
                                        Text(item.isLocked ? question : item.element.rawValue)
                                        Spacer()
                                        Image(item.isLocked ?  "" : item.element.rawValue)
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    }
                                    .padding([.top, .horizontal])
                                
                                    HStack {
                                        Text("Gender: ")
                                        Text(item.isLocked ? question : item.gender.rawValue)
                                        Spacer()
                                        Image(item.isLocked ? "" : item.gender.rawValue)
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    }
                                    .padding(.horizontal)
                                    
                                    HStack {
                                        Text("Planet:   ")
                                        Text(item.planet.rawValue)
                                        Spacer()
                                        Image(item.planet.rawValue)
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    }
                                    .padding(.horizontal)
                                    HStack(alignment: .top) {
                                        
                                        Text("Powers: ")
                                        VStack (alignment: .leading){
                                            ForEach(item.powers, id: \.self) { power in
                                                HStack {
                                                    Text(power)
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
                
                            }
                            // MARK: Buttons
                            HStack {
                                // MARK: Prev Button
                                Button(action: {
                                    withAnimation {
                                        snappedItem = (snappedItem + 1).truncatingRemainder(dividingBy: Double(cardObjects.cards.count))
                                        draggingItem = snappedItem
                                    }
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundStyle(.minty)
                                            .frame(width: 90 )
                                            .padding(.trailing)
                                        
                                        HStack {
                                            Image(systemName: "leaf")
                                                .resizable()
                                                .font(.title)
                                                .frame(width: 20, height: 20)
                                                .tint(Color.moss)
                                                
                                            Text("Prev")
                                                .font(.subheadline)
                                                .tint(Color.moss)
                                        }
                                        .padding(.trailing)
                                    }
                                }
                                Spacer()
                                //MARK: Next Button
                                Button(action: {
                                    withAnimation {
                                        snappedItem = (snappedItem - 1).truncatingRemainder(dividingBy: Double(cardObjects.cards.count))
                                        draggingItem = snappedItem
                                    }
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundStyle(.minty)
                                            .frame(width: 90 )
                                            .padding(.leading)
                                        HStack {
                                            
                                            Text("Next")
                                                .font(.subheadline)
                                                .tint(.moss)
                                            Image(systemName: "leaf")
                                                .resizable()
                                                .font(.title)
                                                .frame(width: 20, height: 20)
                                                .tint(.moss)
                                            
                                        }
                                        .padding(.leading)
                                    }
                                }
                            
                                
                            }
                        }
                        //MARK: Locked Cards
                        if item.isLocked {
                                                Color.black
                                                        .cornerRadius(10)
                                                        .shadow(color: .red, radius: 15)
                                                        .overlay(
                                                            VStack {
                                                                ZStack {
                                                                    Image("?????????")
                                                                        .resizable()
                                                                        .shadow(color: .red, radius: 15)
                                                                        .frame(width: 250, height: 460)
                                                                        .overlay(
                                                                            RoundedRectangle(cornerRadius: 20)
                                                                                .stroke(.red, lineWidth: 2)
                                                                            )
                                                                    
                                                                }
                                                                // MARK: Buttons
                                                                HStack {
                                                                    // MARK: Prev Button
                                                                    Button(action: {
                                                                        withAnimation {
                                                                            snappedItem = (snappedItem + 1).truncatingRemainder(dividingBy: Double(cardObjects.cards.count))
                                                                            draggingItem = snappedItem
                                                                        }
                                                                    }) {
                                                                        ZStack {
                                                                            RoundedRectangle(cornerRadius: 30)
                                                                                .foregroundStyle(.minty)
                                                                                .frame(width: 90 )
                                                                                .padding(.trailing)
                                                                            
                                                                            HStack {
                                                                                Image(systemName: "leaf")
                                                                                    .resizable()
                                                                                    .font(.title)
                                                                                    .frame(width: 20, height: 20)
                                                                                    .tint(Color.moss)
                                                                                    
                                                                                Text("Prev")
                                                                                    .font(.subheadline)
                                                                                    .tint(Color.moss)
                                                                            }
                                                                            .padding(.trailing)
                                                                        }
                                                                    }
                                                                    Spacer()
                                                                    //MARK: Next Button
                                                                    Button(action: {
                                                                        withAnimation {
                                                                            snappedItem = (snappedItem - 1).truncatingRemainder(dividingBy: Double(cardObjects.cards.count))
                                                                            draggingItem = snappedItem
                                                                        }
                                                                    }) {
                                                                        ZStack {
                                                                            RoundedRectangle(cornerRadius: 30)
                                                                                .foregroundStyle(.minty)
                                                                                .frame(width: 90 )
                                                                                .padding(.leading)
                                                                            HStack {
                                                                                
                                                                                Text("Next")
                                                                                    .font(.subheadline)
                                                                                    .tint(.moss)
                                                                                Image(systemName: "leaf")
                                                                                    .resizable()
                                                                                    .font(.title)
                                                                                    .frame(width: 20, height: 20)
                                                                                    .tint(.moss)
                                                                                
                                                                            }
                                                                            .padding(.leading)
                                                                        }
                                                                    }
                                                                
                                                                    
                                                                }
                                                                
                                                                
                                                            }
                                                        )
                                                }
                    }
                    .frame(width: 250, height: 450)
                    .scaleEffect(1.2 - abs(distance(item.id, itemCount: cardObjects.cards.count)) * 0.0375)
                    .opacity(1.2 - abs(distance(item.id, itemCount: cardObjects.cards.count)) * 0.8)
                    .offset(x: myXOffset(item.id, itemCount: cardObjects.cards.count, viewWidth: geometry.size.width), y: 0)
                   .zIndex(1.2 - abs(distance(item.id, itemCount: cardObjects.cards.count)) * 0.1)
                }
                
                
                
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .gesture(getDragGesture(viewWidth: geometry.size.width))
        }
    }
    
    private func getDragGesture(viewWidth: CGFloat) -> some Gesture {
        DragGesture()
            .onChanged { value in
                draggingItem = snappedItem + value.translation.width / 100
            }
            .onEnded { value in
                withAnimation {
                    let itemCount = Double(cardObjects.cards.count)
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
        .previewInterfaceOrientation(.landscapeLeft)
}





































//                                HStack {
//                                    VStack(alignment: .leading) {
//                                        Text("Element:")
//                                        Text("Gender:")
//                                        Text("Planet:")
//                                        Text("Powers:")
//                                    }
//                                    .foregroundStyle(.black)
//                                    .font(.subheadline)
//                                    .padding(.bottom)
//                                    VStack(alignment: .leading) {
//                                        Text(item.element.rawValue)
//                                        Text(item.gender.rawValue)
//                                        Text(item.planet.rawValue)
//                                        Text(item.powers.joined(separator: ", "))
//                                    }
//                                    .foregroundStyle(.black)
//                                    .font(.subheadline)
//                                    .padding(.vertical)
//                                    VStack(alignment: .trailing) {
//                                        Image(item.element.rawValue)
//                                            .resizable()
//                                            .frame(width: 20, height: 20)
//                                        Image(item.gender.rawValue)
//                                            .resizable()
//                                            .frame(width: 20, height: 20)
//                                        Image(item.planet.rawValue)
//                                            .resizable()
//                                            .frame(width: 20, height: 20)
//
//                                    }
//                                    .foregroundStyle(.black)
//                                    .font(.subheadline)
//                                    .padding([.bottom, .trailing, .top])
//
//                                }
//                                .background {
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .fill(Color.moss)
//                                        .padding(.bottom, 9)
//
//
