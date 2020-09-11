//: [Previous](@previous)

import Foundation

//var str = "Hello, playground"
// مثل هم تغییز کرده باشند
//: [Next](@next)
var (str,num) = (Array("ssbbsj") ,Array("88$$8h"))
var dic = Dictionary<Character,Character>()
// check equal count
func isumetricCheck() -> Bool {
    guard str.count == num.count   else {
        return false
    }
    guard str.count > 0 else {
        return false
    }
    for (index,i) in str.enumerated() {
        //check is null and isnt repeted in other key
        if dic[i] == nil {
            if dic.values.contains(num[index]) {
            return false
            } else {
                dic[i] = num[index]
            }
        } else {
            if dic[i] != num[index] {
                return false
            }
        }
    }
    
    return true
}
isumetricCheck()
