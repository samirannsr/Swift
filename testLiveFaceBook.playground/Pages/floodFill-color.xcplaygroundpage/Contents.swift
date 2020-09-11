//: [Previous](@previous)

import Foundation
import UIKit
var str = "Hello, playground"

//: [Next](@next)
let matrixColor = [[1,1,1,1,1],
                   [1,1,2,2,1],
                   [1,1,2,2,1],
                   [1,1,2,2,1],
                   [1,2,2,2,2]]


let rCount = matrixColor[0].count
let CCount = matrixColor.count
var visitor: [[Int]] = [[]]

func neigbure(r: Int, c:Int)-> [[Int]]{
    return [[r-1,c-1],[r-1,c],[r-1,c+1],
            [r,c-1],[r,c+1],
            [r+1,c-1],[r+1,c],[r+1,c+1]]
}

func neigbure2(r: Int, c:Int)-> [[Int]]{
    return [[r,c+1],[r+1,c+1]]
}

func floodFill(r:Int, c:Int,color: Int, newColor: Int){
    if r > rCount {
        return
    }
    if c > CCount {
        return
    }
    if matrixColor[r][c] != color {
        return
    }
    visitor.insert([2])
    
    let moves = neigbure(r: r,c: c)
    let move2 = neigbure2(r: r,c: c)
    for move in moves2 {
        floodFill(r: move[0], c: move[1], color: color, newColor: newColor)
    }


//    for move in moves {
//        floodFill(r: move[0], c: move[1], color: color, newColor: newColor)
//    }
  
}

for i in 0..<matrixColor.count {
    for j in 0..<matrixColor[i].count {
        floodFill(r: i, c: j, color: 2,newColor: 3 )
    }
}
print(matrixColor)


NSSearchPathForDirectoriesInDomains



