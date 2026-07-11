import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    let basicTime = fees[0]
    let basicFee = fees[1]
    let unitTime = fees[2]
    let unitFee = fees[3]
    var inCar = [String: Int]()
    var totalTime = [String: Int]()

    func toMinute(_ time: String) -> Int {
        let arr = time.split(separator: ":").map { Int($0)! }

        return arr[0] * 60 + arr[1]
    }

    for record in records {
        let parts = record.split(separator: " ")
        let time = toMinute(String(parts[0]))
        let car = String(parts[1])
        let type = String(parts[2])

        if type == "IN" {
            inCar[car] = time

        } else {
            let diff = time - inCar[car]!

            totalTime[car, default: 0] += diff
            inCar.removeValue(forKey: car)
        }
    }

    let endTime = 23 * 60 + 59

    for (car, start) in inCar {
        totalTime[car, default: 0] += endTime - start
    }

    var result: [Int] = []

    for car in totalTime.keys.sorted() {
        let time = totalTime[car]!

        if time <= basicTime {
            result.append(basicFee)

        } else {
            let extra = time - basicTime
            let count = Int(ceil(Double(extra) / Double(unitTime)))

            result.append(basicFee + count * unitFee)
        }
    }

    return result
}