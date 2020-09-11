import Foundation
import UIKit
//let t = "ssgggjjjeee"
//let p = [6,3,4,5,5,5]
//var set = NSCountedSet(array: Array(p))
//var g = Array(set).map{$0 as! Int}
//let m = g.sorted(by: {$0 < $1})
//print(m, type(of: g))
//
//
//
//
//func  findTheLongestSubstring(s: String ) -> Int {
//       // memset(lst, -1, sizeof(lst));
//        var h = 0
//        var lst = [h]
//        var  ans = 0, cur = 0
//        for c in s {
//            cur += 1
//            if c == "a" { h ^= (1 << 0)}
//            else if c == "e" { h ^= (1 << 1)}
//                else if c == "i" { h ^= (1 << 2)}
//                    else if c == "o" { h ^= (1 << 3)}
//                        else if c == "u" { h ^= (1 << 4)}
//            if lst[h] >= 0 { ans = max(ans, cur - lst[h])}
//            else { lst[h] = cur }
//        }
//        return ans
//    }
//
//
//let s = "eleetminicoworoep"
//findTheLongestSubstring(s: s)



//
//func generateTheString(_ n: Int) -> String {
//    var resultString = ""
//
//    for _ in 0..<n - 1 {
//           resultString += "a"
//    }
//    if n % 2 > 0 {
//        resultString += "b"
//    }
//   return  resultString
//}
//print(generateTheString(6))
//


//
//let A = 0...4
//let B = 3...6
//print(A.count)
//if A.count <= 0 {
//     0
//}
//if A.overlaps(B) {
//
//    print(A.clamped(to: B))
//}






//
//
//func addBinary(a:String, b:String) -> String {
//    func toInt(binaryString: String) -> Int {
//        return strtol(binaryString, nil, 2)
//    }
//
//    let _a = toInt(binaryString: a)
//    let _b = toInt(binaryString: b)
//
//    return String(_a + _b, radix: 2)
//}
//
//let result = addBinary(a:"11", b:"1")
//print(result)
//
//
func addBinary(a:String, b:String) -> String {
    guard let _a = Int(a, radix: 2),
    let _b = Int(b, radix: 2) else { return "0" }

    return String(_a &+ _b, radix: 2)
}
let result = addBinary(a:"11", b:"10")
print(result)


let x:Int8 = 2
let y: Int8 = 6
x.bitWidth
x.bigEndian
x.littleEndian
x.byteSwapped
x.signum()
//let H: Strideable

type(of:x)
x.self
String(describing: x)

x & y
x | y
x ^ y
x << 8 //overFlow
x &<< 9  //overflow & : sure  shift amount is in the range,  resulting in no change
//x + y
x &+ y
 let nitX = ~x
x.advanced(by: 8) // +
x.distance(to: y) // -
let (q,r) = 33.quotientAndRemainder(dividingBy: 4)
print(q,r)
Int.max
UInt8.max
Int8.max

Int16.max
Int16.min
x.subtractingReportingOverflow(y)
let t: Int8 = 0b0001_0111
t.nonzeroBitCount
     Int(" 100")                       // Includes whitespace
     Int("21-50")                      // Invalid format
     Int("ff6600")                     // Characters out of bounds
     Int("zzzzzzzzzzzzz", radix: 36)   // Out of range
let p: Int8 = 0b0001_1111

Int("0101", radix: 2)
Int("0372", radix: 8)

Int("",radix:2)
let a = Int("10",radix: 2)
let b = Int("11",radix: 2)
let tt = a! + b!
type(of: tt)
let s = tt.description
let ttt = Int(String(tt), radix: 2)


  var x1: Int8 = 10
   //x1 *= 60 error
    x1 &*= 60 // 88
print(String(describing: x1), type(of: x1), Int8.max, Int32.max)

var x2: Int32 = 1000
//Int8(x2) // not enought bitt error
Int8(truncatingIfNeeded: x2) // -24
