

import Foundation

var array1 = [5, 1, 4, 2, 8,7,9,3]

for i in 0..<array1.count {
  for j in 1..<array1.count - i {
    if array1[j] < array1[j-1] {
      let tmp = array1[j-1]
      array1[j-1] = array1[j]
      array1[j] = tmp
    }
  }
}
print(array1)

//O(N^2)
var array = [5, 1, 4, 2, 8,7,9,3]
var check = 1
while check != 0 {
    check = 0
    for i in 0..<array.count - 1  {
        if  array[i] > array[i+1] {
        let temp = array[i]
        array[i] = array[i+1]
        array[i + 1] = temp
            check = 1
        }
    }
}

