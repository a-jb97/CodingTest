import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let keypad: [Int:(Int, Int)] = [
        1:(0,0), 2:(0,1), 3:(0,2),
        4:(1,0), 5:(1,1), 6:(1,2),
        7:(2,0), 8:(2,1), 9:(2,2),
        0:(3,1)
    ]
    var leftHand = (3,0)
    var rightHand = (3,2)
    var result = ""
    
    for number in numbers {
        switch number {
        case 1, 4, 7:
            result += "L"
            leftHand = keypad[number]!
            
        case 3, 6, 9:
            result += "R"
            rightHand = keypad[number]!
            
        default:
            let target = keypad[number]!
            let leftDistance = abs(leftHand.0 - target.0) + abs(leftHand.1 - target.1)
            let rightDistance = abs(rightHand.0 - target.0) + abs(rightHand.1 - target.1)
            
            if leftDistance < rightDistance {
                result += "L"
                leftHand = target
                
            } else if rightDistance < leftDistance {
                result += "R"
                rightHand = target
            } else {
                if hand == "right" {
                    result += "R"
                    rightHand = target
                } else {
                    result += "L"
                    leftHand = target
                }
            }
        }
    }
    
    return result
}