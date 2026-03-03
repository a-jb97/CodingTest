import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: Int] = [:]
    var result = 1
    
    for cloth in clothes {
        let category = cloth[1]
        
        dict[category, default: 0] += 1
    }
    
    for count in dict.values {
        result *= (count + 1)
    }
    
    return result - 1
}