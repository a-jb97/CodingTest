import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    var result = 0
    
    if flag == true {
        result = a + b
    } else {
        result = a - b
    }
    
    return result
}