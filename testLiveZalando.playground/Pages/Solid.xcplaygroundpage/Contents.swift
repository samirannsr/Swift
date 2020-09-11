//: [Previous](@previous)

import Foundation
import UIKit
//  OCP
protocol calculateProtocol {
    var radios: Float {get}
    func calculate() -> Float
}

class circleAround: calculateProtocol {
    var radios: Float
    init(radios: Float) {
        self.radios = radios
    }
    
    func calculate() -> Float {
        return 2 * radios
        
    }
    
}
class circleContent: calculateProtocol {
    var radios: Float
    init(radios: Float) {
        self.radios = radios
    }
    
    func calculate() -> Float {
        return  4 * radios//.pi * pow(radios, 2)
        
    }
    
}
class circleMath: calculateProtocol {
    var radios: Float
    init(radios: Float) {
        self.radios = radios
    }
    
    func calculate() -> Float {
        return    radios//.pi * pow(radios, 2)
        
    }
    
}



let around = circleAround(radios: 2)
let content = circleContent(radios: 2)
let math = circleMath(radios: 2)

let list: [calculateProtocol] = [around,content, math]

for i in list {
   print( i.calculate())
}




var yy = UILabel()
String(describing: type(of: yy))
type(of: yy)
String(describing: yy.self)
type(of:yy.self)

