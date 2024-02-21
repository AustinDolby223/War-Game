import SwiftUI

class Deck {
    
    var cards: [Card] = []
    
    init(){
        cards = []
        resetDeck()       
        
    }
    
    func dealCard() -> Card {
        
        return cards.removeFirst()
        
    }
    
    
    
    func shuffleDeck() {
        
        cards.shuffle()
        
    }
    
    
    
    func resetDeck() {
        
        cards.removeAll()
        
        let suits: [String] = ["clubs", "hearts", "spades", "diamonds"]
        
        let symbols: [String] = ["02", "03", "04", "05", "06", "07", "08", "09", "10", "J", "Q", "K"]
        
        
        
        for suit in suits {
            
            for symbol in symbols {
                
                let c = Card(suit: suit, symbol: symbol)
                
                cards.append(c)
                
            }
            
        }
        
        shuffleDeck()
        
    }
    
}



