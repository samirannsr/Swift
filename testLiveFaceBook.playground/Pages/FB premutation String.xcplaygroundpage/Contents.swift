////: [Previous](@previous)
//
import Foundation  // جایگشت ها
var count = 0
var allArr = NSCountedSet()
func recursionPermutation(strArray: inout [Character], left: Int, right: Int) -> Int {
 
    if left == right {
        return 0
    }
    for i in  left...right {
        strArray.swapAt(left , i)
        allArr.add(String(strArray))
        recursionPermutation(strArray: &strArray, left: left + 1, right: right )
        strArray.swapAt(left , i)
        allArr.add(String(strArray))
        
    }
  
    return count
}

var str = Array("XOHR")
let c = recursionPermutation(strArray: &str, left: 0, right: str.count - 1 )
  //print(allArr)
allArr.forEach{ print(allArr.count(for: $0) , $0)}
//


//O(n*n!)

// func  permutation(str: Array<Character>) {
   
//}


