//: [Previous](@previous)

import Foundation
import UIKit

//------------------------- ErorrHandelling
enum errorType: Error {
    case error1
    case error2
}

func order() throws  -> Int{
    
    print (1)
    print (2)
    print(3)
    if 1==1 {
        throw errorType.error1
    } else {  return 1 }
    
}
//--type 1
let x: Int
do {
    x =  try order()
    print(x)
} catch errorType.error1{
    print("error1")
} catch errorType.error2 {
    print("error2")
}

//return error1

//type optional
//try? order() //return nil
//try! order() //error: Execution was interrupted,

/*UIActivity->*/ //  UIActivityViewController(activityItems: <#T##[Any]#>, applicationActivities: <#T##[UIActivity]?#>)

//let g = NSArray()
//g.write(toFile: <#T##String#>, atomically: <#T##Bool#>)

//FileManager.SearchPathDirectory
//let stringArray = NSSearchPathForDirectoriesInDomains(<#T##directory: FileManager.SearchPathDirectory##FileManager.SearchPathDirectory#>, <#T##domainMask: FileManager.SearchPathDomainMask##FileManager.SearchPathDomainMask#>, <#T##expandTilde: Bool##Bool#>).first
//FileManager


//print (CharacterSet.uppercaseLetters.contains(UnicodeScalar.chara))
protocol hh : class {
    
}
let letters = "abracadabra"
let str = letters.reduce(into: [:]){ count,letter in
    count[letter , default:0] += 1
}
var arr = [1,2,3,2,4]
var arr3 = arr.reduce(into: []){ $0.append(String($1) + "th")}
var arr4 = arr.flatMap{String($0) + "th"}
var dic = [String: Int]()
arr.map{  dic[String($0) + "th", default: 0 ] += 1 }
//(into: []){ $0.append(String($1) + "th")}
//{String($0) + "th"}//([Int](), { r, i in  r.append(i)})//{String($0)+"th"}
let numbers = [1, 2, 3, 4]
let numberSum = numbers.reduce(0, { x, y in
    x + y
})
//
print(dic)


var first  = 1
var second = 2
//var sum = 0
//var array = [1,2]
//var evenSum = 0
//var arrayEven = [Int]()
//
//while second < 4000000 {
//   second =  first + second
//    array.append(second)
//    if second % 2 == 0 {
//        evenSum += second
//        arrayEven.append(second)
//    }
//}
//
//print(array)
//print(arrayEven)
//print(evenSum) func findTheLongestSubstring(_ s: String) -> Int {

   func  fin(_ s: String) -> Int {
              let set = NSCountedSet()
              var resulte = 0
              for i in s {
                if  "aeiou".contains(i) {
                   set.add(i)
                  }
                
                  for j in set {
                    if   set.count(for: j) % 2 == 0 {
                      resulte += 1
                    }
                  }
                if  set.count < 5 {
                    resulte += (5  - set.count)
                }
              }
              return resulte
          }
print(fin("eleetminicoworoep"))





