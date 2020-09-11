//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

var arr = [[2,4],[3,6],[8,12],[9,10],[7,15]] // [[1,5],[6,7]]

var arr2  = [[2,4],[8,10],[9,11],[3,4]]

func mergeOverlap(first: [Int], second: [Int]) -> [Int] {
    var mergedArraySet = Array<Int>()
    mergedArraySet.append(min(second[0],first[0]))
        mergedArraySet.append(max(second[1],first[1]))
    return Array(mergedArraySet)
}

func checkOverLap(first: [Int], second: [Int]) -> Bool {
  let front = max( first[0], second[0])
    let back = min(first[1],second[1])
   return back > front ? true : false // back - front > 0

}
    
func sortOverlapTimes (array:[[Int]]) -> [[Int]] {
    print("1")
   let sortArray = array.sorted{$0[0] < $1[0]}
    var stack : [[Int]] = [array[0]]
    for i in sortArray[1..<sortArray.count] {
        if  checkOverLap(first: stack.last!, second: i) {
            let last = stack.last
            stack.popLast()
            stack.append(mergeOverlap(first: last!, second: i))
        } else { stack.append(i)
            continue
        }
    }
return stack
}

print(sortOverlapTimes(array: arr))



