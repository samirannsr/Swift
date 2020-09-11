
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



func matrix(arr: [[Int]]){
var cookies = [[Int]](repeating: [Int](repeating: 0, count: 4), count: arr.count)

    for (index,i) in arr.enumerated() {

        for (indx,j) in arr[index].enumerated() {
            if j != 0 {
                continue
            }
            if j == arr[index][indx + 1] {


            }

        }
    }


}


func searchHor(item: Int, index: Int, arr :[Int]){

    if item == arr[index + 1] {

    }

}

func searchVer(item: Int, index: Int, nextArr :[[Int]]){

    if item == nextArr[index] {
searchVer(
    }
}

