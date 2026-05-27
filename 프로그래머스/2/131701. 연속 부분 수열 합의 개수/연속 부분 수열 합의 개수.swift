import Foundation

func solution(_ elements:[Int]) -> Int {
    let n = elements.count
    let doubled = elements + elements
    var prefix = Array(repeating: 0, count: doubled.count + 1)
    var result = Set<Int>()
    
    for i in 0..<doubled.count {
        prefix[i + 1] = prefix[i] + doubled[i]
    }

    for length in 1...n {
        for start in 0..<n {
            let sum = prefix[start + length] - prefix[start]

            result.insert(sum)
        }
    }

    return result.count
}