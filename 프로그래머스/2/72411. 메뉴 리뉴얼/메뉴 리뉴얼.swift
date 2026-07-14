import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var result: [String] = []

    for length in course {
        var map: [String:Int] = [:]

        func dfs(_ chars:[Character], _ idx:Int, _ current:String) {
            if current.count == length {
                map[current, default:0] += 1
                return
            }

            if idx == chars.count {
                return
            }

            for i in idx..<chars.count {
                dfs(chars, i + 1, current + String(chars[i]))
            }
        }

        for order in orders {
            if order.count < length {
                continue
            }

            let chars = order.sorted()

            dfs(chars, 0, "")
        }

        var maxCount = 2

        for count in map.values {
            maxCount = max(maxCount, count)
        }

        for (menu, count) in map {
            if count == maxCount {
                result.append(menu)
            }
        }
    }

    return result.sorted()
}