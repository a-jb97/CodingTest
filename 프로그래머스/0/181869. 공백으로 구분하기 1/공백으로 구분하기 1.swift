import Foundation

func solution(_ my_string:String) -> [String] {
    let splitMy_string = my_string.split(separator: " ")
    var result: [String] = []
    
    for str in splitMy_string {
        result.append(String(str))
    }
    
    return result
}