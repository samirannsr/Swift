//: [Previous](@previous)

import Foundation

let arr = [5 ,6, 7, 8, 9, 10, 1, 2, 3, 4]
// آرایه سورت شده چرخیده
func findMinimumInCircular(left: Int, right:Int) -> Int {

  // base case
  if arr[left] > arr[left + 1] {
    return left + 1
  }

  let middle = Int(left + right) / 2

  if arr[left] > arr[middle] {
    return findMinimumInCircular(left: left, right: middle)
  }
  if arr[middle] > arr[right]{
    return findMinimumInCircular(left: middle, right: right)
  }
  return -1
}


//print(findMinimumInCircular(left: 0, right: arr.count - 1))



// other way
//circular sorted array
func findMinmum(array:[Int]) -> Int {
   return  findPivote(start: 0, end: array.count - 1, array: array)
}

func findPivote(start: Int, end: Int, array: [Int]) -> Int {

    let mid = start + end / 2
    
    if array[mid] > array[mid + 1] {
        print(mid + 1)
        return mid + 1
    } else {
        if array[start] > array[end] {
         return   findPivote(start: start, end: mid - 1, array: array)
        } else {
         return   findPivote(start: mid + 1, end: end, array: array)
        }
    }
    
}
let min = findMinmum(array:arr)

// وسط اگر از بعدی خودش بزرگتر باشد بعدی چوال است و گرنه اگر از کمترین ایندکی کوچکتر باشد همیت چک را با منطقه اول و وسط منهای - ۱ انجام می دهیم
