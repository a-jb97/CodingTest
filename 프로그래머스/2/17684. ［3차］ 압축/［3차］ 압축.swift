func solution(_ msg:String) -> [Int] {
    var dict = [String: Int]()

    for i in 0..<26 {

        let ch = Character(UnicodeScalar(65 + i)!)

        dict[String(ch)] = i + 1

    }

    var nextIndex = 27
    let chars = Array(msg)
    var i = 0
    var result: [Int] = []

    while i < chars.count {
        var word = ""
        var last = ""
        var j = i

        while j < chars.count {
            word += String(chars[j])

            if dict[word] != nil {
                last = word
                j += 1

            } else {
                break
            }
        }

        result.append(dict[last]!)

        if j < chars.count {
            dict[word] = nextIndex
            nextIndex += 1
        }

        i += last.count
    }

    return result
}