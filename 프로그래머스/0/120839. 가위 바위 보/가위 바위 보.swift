import Foundation

func solution(_ rsp:String) -> String {
    var result: String = ""
    
    for i in rsp {
        switch i {
        case "2":
            result += "0"
        case "0":
            result += "5"
        case "5":
            result += "2"
        default:
            result += "0"
        }
    }
    
    return result
}