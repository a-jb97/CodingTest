import Foundation

func solution(_ picks: [Int], _ minerals: [String]) -> Int {
    let pickCount = picks.reduce(0, +)
    let maxMinerals = min(minerals.count, pickCount * 5)
    var groups: [(diamond: Int, iron: Int, stone: Int)] = []
    var index = 0

    while index < maxMinerals {
        var diamond = 0
        var iron = 0
        var stone = 0

        for i in index..<min(index + 5, maxMinerals) {
            switch minerals[i] {
            case "diamond":
                diamond += 1
            case "iron":
                iron += 1
            default:
                stone += 1
            }
        }

        groups.append((diamond, iron, stone))
        index += 5
    }

    groups.sort {
        let lhs = $0.diamond * 25 + $0.iron * 5 + $0.stone
        let rhs = $1.diamond * 25 + $1.iron * 5 + $1.stone

        return lhs > rhs
    }

    var picks = picks
    var result = 0

    for group in groups {
        if picks[0] > 0 {
            result += group.diamond
            result += group.iron
            result += group.stone

            picks[0] -= 1
        }

        else if picks[1] > 0 {
            result += group.diamond * 5
            result += group.iron
            result += group.stone

            picks[1] -= 1
        }

        else {
            result += group.diamond * 25
            result += group.iron * 5
            result += group.stone

            picks[2] -= 1
        }
    }

    return result
}