import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length)
    var front = 0
    var currentWeight = 0
    var time = 0
    var truckIndex = 0

    while truckIndex < truck_weights.count {
        time += 1
        currentWeight -= bridge[front]
        bridge[front] = 0

        let truck = truck_weights[truckIndex]

        if currentWeight + truck <= weight {
            bridge[front] = truck
            currentWeight += truck
            truckIndex += 1
        } 

        front = (front + 1) % bridge_length
    }

    return time + bridge_length
}