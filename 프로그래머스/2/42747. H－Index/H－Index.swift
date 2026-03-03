import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    
    for i in 0..<sortedCitations.count {
        if sortedCitations[i] < i + 1 {
            return i
        }
    }
    
    return sortedCitations.count
}