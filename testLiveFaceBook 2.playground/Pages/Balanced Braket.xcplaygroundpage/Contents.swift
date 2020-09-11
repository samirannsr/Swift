//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

var array = Array("[<L>}")

let cset = CharacterSet(charactersIn: str).inverted
//print(String(cset))
str.rangeOfCharacter(from: cset)


let validBrocket = "[] () {}"

//func balancedBracket() -> Bool {
//    if str.isEmpty {
//        return true
//    }
//    let charset = CharacterSet(charactersIn:  validBrocket)
//    let s = str.rangeOfCharacter(from: charset )
//return true
//}
//balancedBracket()


func balancedBracket(input: String) -> Bool {
    let validBrackets = "([{<>}])"
    let validCharacterSet = CharacterSet(charactersIn:validBrackets).inverted
    
    guard input.rangeOfCharacter(from: validCharacterSet) == nil
        else { return false }
    let matchingBrackets: [Character: Character] = ["(": ")", "[": "]", "{": "}", "<": ">"]
    var usedBrackets = [Character]()
    for bracket in input {
        if matchingBrackets.keys.contains(bracket) {
            
            usedBrackets.append(bracket)
        } else {
            // this is a closing bracket – try to pull off our previous open
            if let previousBracket = usedBrackets.popLast() {
                if matchingBrackets[previousBracket] != bracket {
                    // if they don't match, this is a bad string
                    return false
                }
            } else {
                // we don't have an opening bracket, this is a bad
                return false
            }
        } }
    return usedBrackets.count == 0 }

balancedBracket(input: "([]{}<[{}]>)")
