import SwiftUI

class Card: Identifiable{
    
    var suit: String
    var symbol: String
    var value : Int
    
    init(suit: String, symbol: String) {
        
        self.suit = suit
        self.symbol = symbol
        
        switch symbol {
            
        case "02":
            
            self.value = 1
            
        case "03":
            
            self.value = 2
            
        case "04":
            
            self.value = 3
            
        case "05":
            
            self.value = 4
            
        case "06":
            
            self.value = 5
            
        case "07":
            
            self.value = 6
            
        case "08":
            
            self.value = 7
            
        case "09":
            
            self.value = 8
            
        case "10":
            
            self.value = 9
            
        case "A":
            
            self.value = 10
            
        case "J":
            
            self.value = 11
            
        case "K":
            
            self.value = 13
            
        case "Q":
            
            self.value = 12
            
        default:
            
            self.value = 0
            
        }
        
    }
    
    
    
    // 3. Methods or functions
    
    
    
    func getImageName() -> String{
        
        return "card_\(suit)_\(symbol)"
        
    }
    
}
