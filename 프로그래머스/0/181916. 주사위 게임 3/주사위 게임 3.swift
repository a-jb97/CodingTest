import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var array = [a, b, c, d]
    var p = 0
    var q = 0
    var r = 0
    var result = 0
    
    if a != b && b != c && c != d {
        result = array.min()!
    }
    
    for number in array {
        let duplicateNum = array.filter { $0 == number }.count
        let extraNum = array.filter { $0 != number }
        
        switch duplicateNum {
        case 4:
            p = number
            result = 1111 * p
        case 3:
            p = number
            q = extraNum[0]
            result = Int(pow(10.0 * Double(p) + Double(q), 2))
        case 2:
            if Set(extraNum).count == 1 {
                p = number
                q = extraNum[0]
                result = (p + q) * abs(p - q)
            } else if Set(extraNum).count == 2 {
                q = extraNum[0]
                r = extraNum[1]
                result = q * r
            }
        default:
            break
        }
    }
    
    return result
}