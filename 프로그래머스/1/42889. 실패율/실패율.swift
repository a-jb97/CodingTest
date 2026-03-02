import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var result: [(stage: Int, fail: Double)] = []
    var remainUsers = stages.count
    var stageCounts = Array(repeating: 0, count: N + 2)
    
    for stage in stages {
        stageCounts[stage] += 1
    }
    
    for stage in 1...N {
        let stageCount = stageCounts[stage]
        let failRate = remainUsers == 0 ? 0 : Double(stageCount) / Double(remainUsers)
        
        result.append((stage, failRate))
        
        remainUsers -= stageCount
    }
    
    result.sort {
        if $0.fail == $1.fail {
            return $0.stage < $1.stage
        }
        
        return $0.fail > $1.fail
    }
    
    return result.map { $0.stage }
}