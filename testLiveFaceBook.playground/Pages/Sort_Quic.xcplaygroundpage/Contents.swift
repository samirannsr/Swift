

import Foundation
func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }
    
    return quicksort(less) + equal + quicksort(greater)
}

let list = [ 10, 0, 3, 9, 2, 14, 8, 27, 1, 5, 8, -1, 26 ]
quicksort(list)

//o(NlogN)



extension Array where Element: Comparable {
    func quickSort() -> [Element] {
        guard count > 1 else { return self }
        // pivot on the center of the array
        let pivot = self[count / 2]
        // create three new buckets that we'll sort ourselves
        //into
        var before = [Element]()
        var after = [Element]()
        var equal = [Element]()
        // loop over all items, placing each one into a bucket by
        //comparing against our pivot
        for item in self {
            if item < pivot {
                before.append(item)
            } else if item > pivot {
                after.append(item)
            } else {
                equal.append(item)
            }
        }
        // call this function recursively then return the
        // combined input
        return before.quickSort() + equal + after.quickSort()
    } }
