import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    let filterNum: (String) -> Bool = { (num: String) in 
        return !num.contains(where: { number in
            number != "0" && number != "5"
        })
    }
    
    for i in l...r {
        let strNum = String(i)
        
        if filterNum(strNum) {
            result.append(i)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}