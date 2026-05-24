import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var countDict: [Int: Int] = [:]

    for size in tangerine {
        countDict[size, default: 0] += 1
    }

    let counts = countDict.values.sorted(by: >)
    var selected = 0
    var result = 0

    for count in counts {
        selected += count
        result += 1

        if selected >= k {
            break
        }
    }

    return result
}