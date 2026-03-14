import Foundation

func solution(_ myString:String) -> [String] {
    let splitStr = myString.split(separator: "x")
    var result: [String] = []
    
    splitStr.forEach { result.append(String($0)) }
    
    return result.sorted()
}