//: [Previous](@previous)
import UIKit
import Foundation

let array = [-1,0,1,4,6,10,12,1000]
func binarySearch(array: [Int],element: Int) -> Int? {

var begin = 0
var end = array.count

    while end > begin {

    let mid = begin + (end - begin) / 2
         print(array[mid])
         if array[mid] == element {

             return mid

         } else if array[mid] < element {

            begin = mid

        } else {
            end = mid
        }
    }
    return nil
}

let yy = binarySearch(array: array, element: -1)
print(yy as Any)


//recursive

func binarySearch<T: Comparable>(_ array: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        // If we get here, then the search key is not present in the array.
        return nil

    } else {
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

        // Is the search key in the left half?
        if array[midIndex] > key {
            return binarySearch(array, key: key, range: range.lowerBound ..< midIndex)

        // Is the search key in the right half?
        } else if array[midIndex] < key {
            return binarySearch(array, key: key, range: midIndex + 1 ..< range.upperBound)

        // If we get here, then we've found the search key!
        } else {
            return midIndex
        }
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearch(numbers, key: 43, range: 0 ..< numbers.count)  // gives 13


