import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result = ""
    
    for i in index_list {
        result.append(Array(my_string)[i])
    }
    
    return result
}