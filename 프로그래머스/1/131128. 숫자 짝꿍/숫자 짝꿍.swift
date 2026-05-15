import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xCount = Array(repeating: 0, count: 10)
    var yCount = Array(repeating: 0, count: 10)
    
    for char in X {
        let number = Int(String(char))!
        
        xCount[number] += 1
    }
    
    for char in Y {
        let number = Int(String(char))!
        
        yCount[number] += 1
    }
    
    var result = ""
    
    for number in stride(from: 9, through: 0, by: -1) {
        let count = min(xCount[number], yCount[number])
        
        if count > 0 {
            result += String(repeating: String(number), count: count)
        }
    }
    
    if result.isEmpty {
        return "-1"
    }
    
    if result.first == "0" {
        return "0"
    }
    
    return result
}