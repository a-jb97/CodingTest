import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    var result = 0
    let sum = a + b + c
    let pow2 = a*a + b*b + c*c
    let pow3 = a*a*a + b*b*b + c*c*c
    
    if a == b && b == c{
        result = sum * pow2 * pow3
    } else if a != b && b != c && a != c {
        result = sum
    } else {
        result = sum * pow2
    }
    
    return result
}