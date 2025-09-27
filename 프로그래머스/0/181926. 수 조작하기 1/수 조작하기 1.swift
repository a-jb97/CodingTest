import Foundation

func solution(_ n:Int, _ control:String) -> Int {
    let controlArr = Array(control)
    var result = n
    
    for i in 0...controlArr.count - 1 {
        switch controlArr[i] {
        case "w":
            result += 1
        case "s":
            result -= 1
        case "d":
            result += 10
        case "a":
            result -= 10
        default:
            result += 0
        }
    }
    
    return result
}