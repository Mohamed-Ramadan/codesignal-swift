import Foundation

// Problem Link: https://app.codesignal.com/interview-practice/task/pMvymcahZ8dY4g75q/description
 
public func firstDuplicateSolution(a: [Int]) -> Int {
    var smallestIndex = a.count
    var duplicateStorage: [Int: Int] = [:]
    
    for i in 0..<a.count {
        
        if duplicateStorage[a[i]] == nil {
            duplicateStorage[a[i]] = -1
        } else {
            if duplicateStorage[a[i]] == -1 {
                duplicateStorage[a[i]] = i
                
                if i < smallestIndex {
                    smallestIndex = i
                }
            } 
        }
    }
    
    return smallestIndex == a.count ? -1 : a[smallestIndex]
}
