import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities.enumerated().map { (index: $0.offset, priority: $0.element) }
    var result = 0

    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        if queue.contains(where: { $0.priority > current.priority }) {
            queue.append(current)

        } else {
            result += 1

            if current.index == location {
                return result
            }
        }
    }

    return result
}