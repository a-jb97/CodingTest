import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var currentMaxDay = 0
    var count = 0

    for i in 0..<progresses.count {
        let remain = 100 - progresses[i]
        let day = Int(ceil(Double(remain) / Double(speeds[i])))

        if day > currentMaxDay {
            if count > 0 {
                result.append(count)
            }

            currentMaxDay = day
            count = 1

        } else {
            count += 1
        }
    }

    result.append(count)

    return result
}