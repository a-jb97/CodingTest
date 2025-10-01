import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var stringArray: [String] = []
    var myString = my_string
    var result: Int = 0
    
    for _ in my_string {
        stringArray.append(myString)
        myString.removeFirst()
    }
    
    for i in stringArray {
        i == is_suffix ? result = 1 : nil
    }
    
    return result
}