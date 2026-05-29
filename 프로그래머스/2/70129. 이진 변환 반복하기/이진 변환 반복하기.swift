import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var transformCount = 0
    var removedZeroCount = 0

    while s != "1" {
        let oneCount = s.filter { $0 == "1" }.count
        let zeroCount = s.count - oneCount

        removedZeroCount += zeroCount
        transformCount += 1
        
        s = String(oneCount, radix: 2)
    }

    return [transformCount, removedZeroCount]
}