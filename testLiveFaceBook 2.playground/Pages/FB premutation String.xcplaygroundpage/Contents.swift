////: [Previous](@previous)
//
import Foundation  // جایگشت ها
var count = 0
var allArr = NSCountedSet()
//func recursionPermutation(strArray: inout [Character], left: Int, right: Int) -> Int {
//
//    if left == right {
//        return 0
//    }
//    for i in  left...right {
//        strArray.swapAt(left , i)
//        allArr.add(String(strArray))
//        recursionPermutation(strArray: &strArray, left: left + 1, right: right )
//        print(strArray)
//        strArray.swapAt(left , i)
//        allArr.add(String(strArray))
//
//    }
//
//    return count
//}

//
//func recursionPermutation1(strArray: inout [Character], left: Int, right: Int) -> Int {
//
//    if left == right{
//        return 0
//    }
//    for i in  left...right {
//        if left != i {
//            var str = strArray
//        strArray.swapAt(left , i)
//            if str != strArray {
//                print(str , strArray,left,i)
//                str = strArray
//            }
//        allArr.add(String(strArray))
//        recursionPermutation1(strArray: &strArray, left: left + 1, right: right )
//        strArray.swapAt(left , i)
//            if str != strArray {
//                print(str , strArray,left,i, "---")
//                str = strArray
//            }
//        allArr.add(String(strArray))
//        }
//
//
//    }
//    return count
//}
//var str = Array("1234")
//let c = recursionPermutation1(strArray: &str, left: 0, right: str.count - 1 )
  //print(allArr)
//allArr.forEach{ print(allArr.count(for: $0) , $0)}
//


//O(n*n!)

// func  permutation(str: Array<Character>) {
   
//}



var h = 0
     h ^= (1 << 4)
print(h)
let a = "001001"
let _a = Int(a,radix: 2) ?? 0

String(_a,radix: 2)
00001
01000
