import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0

    for num in left...right {
        let root = Int(sqrt(Double(num)))

        if root * root == num {
            result -= num

        } else {
            result += num
        }
    }

    return result
}