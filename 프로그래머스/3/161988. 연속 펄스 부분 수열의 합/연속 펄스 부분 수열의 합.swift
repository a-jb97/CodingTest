import Foundation

func solution(_ sequence:[Int]) -> Int64 {
    var pulse1 = [Int]()
    var pulse2 = [Int]()

    for i in 0..<sequence.count {
        if i % 2 == 0 {
            pulse1.append(sequence[i])
            pulse2.append(-sequence[i])

        } else {
            pulse1.append(-sequence[i])
            pulse2.append(sequence[i])
        }
    }

    func kadane(_ arr: [Int]) -> Int64 {
        var current = Int64(arr[0])
        var result = current

        for i in 1..<arr.count {

            current = max(Int64(arr[i]), current + Int64(arr[i]))

            result = max(result, current)

        }

        return result

    }

    return max(kadane(pulse1), kadane(pulse2))
}