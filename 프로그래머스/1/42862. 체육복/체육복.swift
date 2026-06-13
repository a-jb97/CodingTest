import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var clothes = Array(repeating: 1, count: n + 1)

    for l in lost {
        clothes[l] -= 1
    }

    for r in reserve {
        clothes[r] += 1
    }

    for i in 1...n {
        if clothes[i] == 0 {
            if i > 1 && clothes[i - 1] == 2 {
                clothes[i] += 1
                clothes[i - 1] -= 1

            } else if i < n && clothes[i + 1] == 2 {
                clothes[i] += 1
                clothes[i + 1] -= 1
            }
        }
    }

    return clothes[1...n].filter { $0 >= 1 }.count
}