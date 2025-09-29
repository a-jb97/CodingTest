import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var stringArray = Array(my_string)
    
    for i in queries {
        stringArray[i[0]...i[1]].reverse()
    }
    
    return String(stringArray)
}