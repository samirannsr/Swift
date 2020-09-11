
import Foundation

var cookies = [[Int]](repeating: [Int](repeating: 0, count: 7), count: 9)

//maxSumColumsItem in 2D array
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var resultArray = Array(repeating: 0, count: n)
    for array in queries {
        for item in array[0]-1...array[1]-1 {
            print(item)

            resultArray[item] += array[2] }
    }
    print(resultArray)
    return resultArray.max() ?? 0
}
//n = count -> max sum of items in same column
let ar = [[1,5,3],[4,8,7],[6,9,1]]
print(arrayManipulation(n:10 ,queries:ar))


