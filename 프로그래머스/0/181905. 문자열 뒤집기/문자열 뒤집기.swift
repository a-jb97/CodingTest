import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let startIndex = my_string.index(my_string.startIndex, offsetBy: s)
    let endIndex = my_string.index(my_string.startIndex, offsetBy: e+1)
    let reversedSubstring = my_string[startIndex..<endIndex].reversed()
    
    let result = my_string[..<startIndex] + String(reversedSubstring) + my_string[endIndex...]
    
    return String(result)
}