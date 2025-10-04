import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    var stringArr: [String] = []
    
    for i in 1...my_string.count {
        stringArr.append(String(my_string.prefix(i)))
    }
    
    return stringArr.contains(is_prefix) ? 1 : 0
}