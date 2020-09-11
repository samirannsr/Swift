//: [Previous](@previous)

import Foundation

struct bike {
    var speed: Array<Int>! //= [100]//[Int]!
    var num: Int //= 2
    
    
    
   init() {
        self.num = 100
    }
}

var bikeCorse = bike()
//bikeCorse.speed = [200]
//bikeCorse.num = 3
//print(bikeCorse.num)




let bikeCorse2 = bike()
var bike2 = bikeCorse
//bike2 = bikeCorse2
bike2.num = 500



//: [Next](@next)
