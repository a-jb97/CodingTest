import Foundation

func solution(_ num_str:String) -> Int {
    num_str.reduce(0) { sum, character in
        sum + Int(String(character))!
    }
}