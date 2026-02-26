import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result = players
    var rank: [String : Int] = [:]
    
    for i in 0..<players.count {
        rank[players[i]] = i
    }
    
    for calling in callings {
        guard let currentIndex = rank[calling], currentIndex > 0 else { continue }
        
        let frontPlayer = result[currentIndex - 1]
        
        result[currentIndex - 1] = calling
        result[currentIndex] = frontPlayer
        
        rank[calling] = currentIndex - 1
        rank[frontPlayer] = currentIndex
    }
    
    return result
}