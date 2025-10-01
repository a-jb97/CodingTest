import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var slice = my_string
    slice.removeFirst(slice.count - n)
    
    return slice
}