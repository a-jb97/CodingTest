import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    return arr.enumerated().map { (i, v) in
        if arr.count % 2 == 0 {
            return i % 2 == 1 ? v + n : v
        } else {
            return i % 2 == 0 ? v + n : v
        }
    }
}