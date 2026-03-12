import Foundation

func solution(_ myString:String) -> String {
    let result = myString.lowercased()
    
    return result.replacingOccurrences(of: "a", with: "A")
}