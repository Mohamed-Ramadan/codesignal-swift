import Foundation

// problem link: https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG

public func almostIncreasingSequenceSolution(sequence: [Int]) -> Bool {
    if sequence.count == 2 {return true}
    
    var countOne = 0
    var countTwo = 0
     
    for i in 0..<sequence.count-1 {
        if sequence[i] >= sequence[i+1] {
            countOne += 1
        }
        
        if i != 0 {
            if sequence[i-1] >= sequence[i+1] {
                countTwo += 1
            }
        }
    }
    
    if countOne == 1 && countTwo <= 1 {
        return true
    } else {
        return false
    } 
}
