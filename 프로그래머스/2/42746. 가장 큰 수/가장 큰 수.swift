import Foundation

func solution(_ numbers:[Int]) -> String {
    let sortedNumbers = numbers
        .map { String($0) }
        .sorted { $0 + $1 > $1 + $0 }
    
    let result = sortedNumbers.joined()
    
    if result.first == "0" {
        return "0"
    }
    
    return result
}