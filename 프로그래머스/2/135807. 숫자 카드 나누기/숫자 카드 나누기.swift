import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b

    while y != 0 {
        let r = x % y
        x = y
        y = r
    }

    return x
}

func getGCD(_ arr: [Int]) -> Int {
    var result = arr[0]

    for num in arr.dropFirst() {
        result = gcd(result, num)
    }

    return result
}

func check(_ divisor: Int, _ arr: [Int]) -> Int {
    for num in arr {
        if num % divisor == 0 {
            return 0
        }
    }
    return divisor
}

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    let gcdA = getGCD(arrayA)
    let gcdB = getGCD(arrayB)

    let resultA = check(gcdA, arrayB)
    let resultB = check(gcdB, arrayA)

    return max(resultA, resultB)
}