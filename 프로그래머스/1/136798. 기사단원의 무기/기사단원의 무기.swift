import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var divsorCounts = Array(repeating: 0, count: number + 1)
    
    for i in 1...number {
        var multiple = i
        
        while multiple <= number {
            divsorCounts[multiple] += 1
            
            multiple += i
        }
    }
    
    var answer = 0
    
    for i in 1...number {
        answer += divsorCounts[i] > limit ? power : divsorCounts[i]
    }
    
    return answer
}