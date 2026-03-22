import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    let top3 = rank.enumerated()
        .filter { attendance[$0.offset] }
        .sorted { $0.element < $1.element }
        .prefix(3)
    
    let indices = top3.map { $0.offset }
    
    return 10000 * indices[0] + 100 * indices[1] + indices[2]
}