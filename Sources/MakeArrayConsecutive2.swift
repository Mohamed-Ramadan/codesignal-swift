import Foundation

// problem link: https://app.codesignal.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC

public func makeArrayConsecutive2Solution(statues: [Int]) -> Int {
    if let min = statues.min(),
       let max = statues.max() {
        return (max - min) - (statues.count - 1)
    }
     
    return 0
}

