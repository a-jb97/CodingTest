import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack: [Character] = []
    var removeCount = k

    for num in number {
        while removeCount > 0,
              let last = stack.last, last < num {
            stack.removeLast()

            removeCount -= 1
        }

        stack.append(num)
    }

    if removeCount > 0 {
        stack.removeLast(removeCount)
    }

    return String(stack)
}