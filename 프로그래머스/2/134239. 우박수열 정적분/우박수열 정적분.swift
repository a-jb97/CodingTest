import Foundation

func solution(_ k: Int, _ ranges: [[Int]]) -> [Double] {
    var sequence: [Int] = [k]
    var current = k
    
    while current != 1 {
        if current % 2 == 0 {
            current /= 2
        } else {
            current = current * 3 + 1
        }
        
        sequence.append(current)
    }
    
    let n = sequence.count - 1
    var prefix = Array(repeating: 0.0, count: n + 1)
    
    for i in 0..<n {
        let y1 = Double(sequence[i])
        let y2 = Double(sequence[i + 1])
        
        let area = (y1 + y2) / 2.0
        prefix[i + 1] = prefix[i] + area
    }
    
    var result: [Double] = []
    
    for range in ranges {
        let start = range[0]
        let end = n + range[1]
        
        if start > end {
            result.append(-1.0)
        } else {
            result.append(prefix[end] - prefix[start])
        }
    }
    
    return result
}