func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b

    while b != 0 {
        let temp = a % b
        a = b
        b = temp
    }

    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a / gcd(a, b) * b
}

func solution(_ arr: [Int]) -> Int {
    var result = arr[0]

    for i in 1..<arr.count {
        result = lcm(result, arr[i])
    }

    return result
}