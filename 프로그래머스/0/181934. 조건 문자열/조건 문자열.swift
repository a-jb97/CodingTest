import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    var result = 0
    
    if ineq == ">" && eq == "=" {
        if n >= m {
            result = 1
        } else if n < m {
            result = 0
        }
    } else if ineq == "<" && eq == "=" {
        if n <= m {
            result = 1
        } else if n > m {
            result = 0
        }
    } else if ineq == ">" && eq == "!" {
        if n > m {
            result = 1
        } else if n < m {
            result = 0
        }
    } else if ineq == "<" && eq == "!" {
        if n < m {
            result = 1
        } else if n > m {
            result = 0
        }
    }
    
    return result
}