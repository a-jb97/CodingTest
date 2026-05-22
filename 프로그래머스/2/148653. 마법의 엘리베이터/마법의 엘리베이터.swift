import Foundation

func solution(_ storey:Int) -> Int {
    var storey = storey
    var answer = 0

    while storey > 0 {
        let digit = storey % 10
        let nextDigit = (storey / 10) % 10

        if digit < 5 {
            answer += digit

        } else if digit > 5 {
            answer += 10 - digit
            storey += 10

        } else {
            if nextDigit >= 5 {
                answer += 5
                storey += 10

            } else {
                answer += 5
            }
        }

        storey /= 10
    }

    return answer
}