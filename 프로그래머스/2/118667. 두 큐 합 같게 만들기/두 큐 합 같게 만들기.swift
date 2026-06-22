import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let n = queue1.count
    let arr = queue1 + queue2
    let total = arr.reduce(0 as Int64) { $0 + Int64($1) }

    if total % 2 != 0 {
        return -1
    }

    let target = total / 2
    var current = queue1.reduce(0 as Int64) { $0 + Int64($1) }
    var left = 0
    var right = n
    var count = 0
    let limit = n * 4

    while count <= limit {
        if current == target {
            return count
        }

        if current > target {
            current -= Int64(arr[left % (2 * n)])

            left += 1
            
        } else {
            current += Int64(arr[right % (2 * n)])

            right += 1

        }
        
        count += 1
    }

    return -1
}