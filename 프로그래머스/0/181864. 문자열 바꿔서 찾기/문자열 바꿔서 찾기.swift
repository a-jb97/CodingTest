import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let swapedStr = myString.map {
        $0 == "A" ? "B" : "A"
    }.joined()
    
    return swapedStr.contains(pat) ? 1 : 0
}