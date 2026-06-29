import Foundation

func solution(_ n:Int) -> Int
{
    let target = n.nonzeroBitCount
    var num = n + 1

    while num.nonzeroBitCount != target {
        num += 1
    }

    return num
}