import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let strA = String(a)
    let strB = String(b)
    let sumAB = Int(strA + strB) ?? 0
    let sumBA = Int(strB + strA) ?? 0
    var result: Int = 0
    
    if sumAB > sumBA {
        result = sumAB
    } else if sumAB < sumBA {
        result = sumBA
    } else if sumAB == sumBA {
        result = sumAB
    }
    
    return result
}