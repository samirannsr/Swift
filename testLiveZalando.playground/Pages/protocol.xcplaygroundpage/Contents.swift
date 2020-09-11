

import Foundation
import UIKit





//protocol get set

@objc protocol counter {
    var  a: Int { get }
    var  b: Int { get }
    var  c: Int { get set }
 @objc optional  func colculate(str: String) -> String?
}
class prpertiesTest: counter {
    let a = 2
    let b = 4
    
    var c: Int {
        get{
          return  2 + 4}
       set{}
    }
    
//    mutating func colculate(str: String) -> String? {
//        ""
//    }
}



var numbers:Array = [2,3,4,5]
let arr = [22,33]
//set.update(with: <#T##Int#>)
//set.append(contentsOf: arr)

numbers.append(contentsOf: stride(from: 60, through: 100, by: 10))
numbers.count == 10
numbers.capacity == 12

let letterscc = ["a"..."z"]
