import Foundation

func solution(_ rny_string:String) -> String {
    var result = ""
    
    for str in rny_string {
        if str == "m" {
            result.append("rn")
        } else {
            result.append(str)
        }
    }
    
    return result
}