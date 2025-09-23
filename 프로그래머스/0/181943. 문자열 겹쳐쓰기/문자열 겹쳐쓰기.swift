import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    var charMy = Array(my_string)
    charMy[s...s + overwrite_string.count - 1] = ArraySlice(overwrite_string)
    let result = String(charMy)
    
    return result
}