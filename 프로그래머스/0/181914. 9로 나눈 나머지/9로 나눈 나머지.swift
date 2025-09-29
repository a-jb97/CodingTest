import Foundation

func solution(_ number:String) -> Int {
    let intArr = number.compactMap { Int(String($0)) }
    var sumNum = 0
    
    for i in 0...intArr.count - 1 {
        sumNum += intArr[i]
    }
    
    return sumNum % 9
}