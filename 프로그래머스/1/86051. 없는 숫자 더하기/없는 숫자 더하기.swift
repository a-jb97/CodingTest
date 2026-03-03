import Foundation

func solution(_ numbers:[Int]) -> Int {
    let allNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    let filteredNumbers = allNumbers.filter { !numbers.contains($0) }
    var result = 0
    
    filteredNumbers.forEach { result += $0 }
    
    return result
}