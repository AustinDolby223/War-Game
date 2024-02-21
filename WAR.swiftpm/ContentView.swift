import SwiftUI

struct ContentView: View {

    @State var deck = Deck()    
    @State var winStatement = "Who will win?!"
//    @State var hand: [Card] = [
//        
//        Card(suit: "hearts", symbol: "02")
//        
//    ]
    
    @State var player1Card: Card = Card(suit: "hearts", symbol: "02")
    
    @State var player2Card: Card = Card(suit: "hearts", symbol: "02")
    
    
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("\(winStatement)")
            
                .bold(true)
            
                .font(.system(size:60))
            
            Spacer()
            
            
            
            
            
            Image( "\(player1Card.getImageName())")
                .resizable()
               .scaledToFill()
              .frame(width: 90, height: 150)
            
            Image( "\(player2Card.getImageName())")
            
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 150)
            
//            ForEach(hand) { card in
//                
//                Image("\(card.getImageName())")
//                
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 90, height: 150)
//            }
            Spacer()
            
            
            
            Button("Deal") {
                
//                hand.removeAll()
                
                
                
                if deck.cards.count < 2 {
                    
                    deck.resetDeck()
                    
                }
                
                player1Card = deck.dealCard()
                
                player2Card = deck.dealCard()
                
//                for _ in 1...2{
//                    
//                    hand.append(deck.dealCard())
//                    
//                } 
                
                if player1Card.value > player2Card.value {
                    winStatement = "Top card Wins!"
                }
                else if player2Card.value > player1Card.value {
                    winStatement = "Bottom card Wins!"
                }
                
                
//                if hand[0].value > hand[1].value {
//                    winStatement = "Top card Wins!"
//                }
//                
//                
                if player1Card.value == player2Card.value {
                    
                    winStatement = "There was a tie! Rock Paper Scissors to win!"
                }
            }
            .font(.system(size:30))
            .foregroundColor(.primary)
            .bold(true)
            .foregroundStyle(.red)
            Spacer()
        }
    }
    
    
    func dealCards(){
       
    }
}
