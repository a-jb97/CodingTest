import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
    var boxes: [[Int]] = []
        var current = 1

        while current <= n {
            var row: [Int] = []

            for _ in 0..<w {
                if current <= n {
                    row.append(current)

                    current += 1
                } else {
                    row.append(0)
                }
            }

            if boxes.count % 2 == 1 {
                row.reverse()
            }

            boxes.append(row)
        }

        var targetRow = 0
        var targetCol = 0

        for r in 0..<boxes.count {
            for c in 0..<w {
                if boxes[r][c] == num {
                    targetRow = r

                    targetCol = c
                }
            }
        }

        var answer = 0

        for r in targetRow..<boxes.count {
            if boxes[r][targetCol] != 0 {
                answer += 1
            }
        }

        return answer
}