import Foundation

// problem link: https://app.codesignal.com/company-challenges/spacex/EcQD8xYZotKM77FKM
 
public func launchSequenceCheckerSolution(systemNames: [String], stepNumbers: [Int]) -> Bool {
    var isStrictlyIncreasingOrder = true
    var systems: [String:[Int]] = [:]
    
    for i in 0..<systemNames.count {
        if systems[systemNames[i]] != nil {
            var systemSteps = systems[systemNames[i]]!
            systemSteps.append(stepNumbers[i])
            systems[systemNames[i]] = systemSteps
        } else {
            systems[systemNames[i]] = [stepNumbers[i]]
        }
    }
     
    for systemName in systemNames {
        let systemSteps = systems[systemName]!
        
        if systemSteps.count == 1 {
            continue
        }
        
        for i in 1..<systemSteps.count {
            if systemSteps[i] <= systemSteps[i-1] {
                isStrictlyIncreasingOrder = false
                break
            }
        }
        
        if !isStrictlyIncreasingOrder {
            break
        }
    }
    return isStrictlyIncreasingOrder
}
