import Foundation

func solution(_ n:Int64) -> [Int] {
    var currentIndex = String(n).count - 1
    var currentN = Int(n)
    var result: [Int] = []
    
    if currentIndex == 0 {
        return [Int(n)]
        
    } else {
        for _ in 0...currentIndex {
            var digit = Int(pow(10.0, Double(currentIndex)))
            
            result.insert(Int(currentN) / digit, at: 0)
            
            currentN -= (Int(currentN) / digit) * digit
            currentIndex -= 1
        }
        
        return result
    }
}