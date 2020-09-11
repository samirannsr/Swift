//: [Previous](@previous)

import Foundation
import UIKit
var str = "Hello, playground"

//: [Next](@next)

enum error:Error {
   case  badValue
    case overFlow
    case typeErroe
}


func check(x:Int ) throws -> Bool {
    
    if x < 0 {
        throw error.badValue
    } else  if x > 1 && x < 5 {
        throw error.overFlow
    } else {
        return true
    }
}
func useing() -> Int {
    //var isCheck: Bool?
//     do {
//      try check(x:-1)
//     } catch  error.badValue{
//       print("ttt")
//     } catch error.overFlow {
//        print("over")
//    }
       return 0
}
 useing()


var a = 1...5
//a.reverse()

a
for s in a.enumerated() {
    
    print(s)
}

