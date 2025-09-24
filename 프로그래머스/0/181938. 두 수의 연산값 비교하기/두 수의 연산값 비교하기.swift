import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let strA = String(a)
    let strB = String(b)
    let ab = Int(strA + strB) ?? 0
    let ab2 = 2 * a * b
    var result = 0
    
    if ab >= ab2 {
        result = ab
    } else {
        result = ab2
    }
    
    return result
}