//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)

//var st: try? = "jh"
//var s = try? String.init("ff")

for (key,value) in [1:"a",2:"d"] {
    print(key,value)
}

protocol test {
    func t ()-> Void 
}
extension test {
    
    func tt(str:String) -> Bool {
        print(t(),"kkkk")
        return true
    }
}

class date: test {
    func t() {
        print("data class")
    }
    
    //    func tt(str: String) -> Bool {
    //        print("data test extension")
    //        return false
    //    }
}
let y = date()
print( y.tt(str: "5"),y.t())


