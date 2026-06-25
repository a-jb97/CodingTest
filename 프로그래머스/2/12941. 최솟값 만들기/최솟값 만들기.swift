import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    let sortedA = A.sorted()
    let sortedB = B.sorted(by: >)
    var answer = 0

    for i in 0..<sortedA.count {
        answer += sortedA[i] * sortedB[i]
    }

    return answer
}