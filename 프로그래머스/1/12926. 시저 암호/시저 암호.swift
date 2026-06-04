func solution(_ s:String, _ n:Int) -> String {
    var result = ""

    for char in s {
        if char == " " {
            result.append(" ")

            continue
        }

        let ascii = Int(char.asciiValue!)
        let base = char.isUppercase ? Int(Character("A").asciiValue!) : Int(Character("a").asciiValue!)
        let shifted = (ascii - base + n) % 26 + base

        result.append(Character(UnicodeScalar(shifted)!))
    }

    return result
}