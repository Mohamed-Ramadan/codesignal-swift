import Foundation

// Problem Link: https://app.codesignal.com/interview-practice/task/uX5iLwhc6L5ckSyNC/description

public func firstNotRepeatingCharacterSolution(s: String) -> Character {
    var charactersCounter: [Character: Int] = [:]
    
    for char in s {
        if let count = charactersCounter[char] {
            charactersCounter[char] = count + 1
        } else {
            charactersCounter[char] = 1
        }
    }
    
    var firstNonRepeatedChar: Character = "_"
    
    for char in s {
        if let count = charactersCounter[char], count == 1 {
            firstNonRepeatedChar = char
            break
        }
    }
    
    return firstNonRepeatedChar
}


public func firstNotRepeatingCharacterSolution2(s: String) -> Character {
     
    
    for char in s {
        if s.firstIndex(of: char) == s.lastIndex(of: char) {
            return char
        }
    }
    return "_"
}
