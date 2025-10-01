import Foundation

func solution(_ my_string:String) -> [String] {
    var result: [String] = []
    var myString = my_string
    
    for _ in my_string {
        result.append(myString)
        myString.removeFirst()
    }
    
    return result.sorted()
}