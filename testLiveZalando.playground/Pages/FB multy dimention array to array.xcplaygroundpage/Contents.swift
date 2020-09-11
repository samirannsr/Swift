//: [Previous](@previous)

import Foundation

var arr:[Any] = [4,3,[6,5],[1,0],[2,[6,7],8,9]]
//let aa = arr.joined()

var r = [Int]()

func nestedArray(array: Array<Any> )
{
    for b in array
    {
        if let b = b as? Array<Any>
        {
            nestedArray(array: b)
        }else {
           //let c =  b as! Int
            r.append(b as! Int)
        }
       
    }
}
nestedArray(array: arr)
print(r.sorted())
