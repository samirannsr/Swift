//: [Previous](@previous)
/// hoew many room is need to accomplesh all session
//[0,30][5,10][15,20] --> 2 room is need


import Foundation

//func meetingRooms(intervals: [[Int]]) -> Int {
//
//    if intervals.count == 0 {
//        return 0
//    }
//
//   var sortIntervals = intervals
//    sortIntervals.sort { (a, b)  in
//        a[0] < b[0]
//    }
//    var queue:[Int] = [sortIntervals[0][1]]
//    for i in sortIntervals[1..<sortIntervals.count - 1] {
//      //  print(i[0], queue.first ?? 0 )
//        print(<#T##items: Any...##Any#>)
//        if i[0] >= queue.first ?? 0 {
//            print(queue[0])
//          queue.remove(at: 0)
//
//        }
//         queue.append(i[1])
//    }
//    //print(queue)
//    return queue.count
//}
//
//
//let array1 = [[2,5],[1,6],[2,10],[4,9],[7,10],[8,11]]
let array = [[2,3],[1,6],[4,5],[7,7]]//[[1, 6], [2, 3], [4, 5], [6, 7]]
//
//meetingRooms(intervals: array)

func meetingRooms2(intervals: [[Int]]) -> Int {

if intervals.count == 0 {
            return 0
        }
        
       var sortIntervals = intervals
        sortIntervals.sort { (a, b)  in
            a[0] < b[0]
        }
       
        var queue:[Int] = [sortIntervals[0][1]]
        for i in sortIntervals[1..<sortIntervals.count] {
                var  counter = 0
                while counter < queue.count {
                      if i[0] >= queue[counter]  {
                        queue.remove(at: counter)
                        break
                      } else {
                        counter += 1
                    }
                }
             queue.append(i[1])
        }
        return queue.count
}
meetingRooms2(intervals: array)
//========================================

 func meetingRooms3(intervals: [[Int]]) -> Int {
        
        if intervals.count == 0 {
            return 0
        }
        var sortIntervals = intervals
        sortIntervals.sort { (a, b)  in
            a[0] < b[0]
        }
        var rooms:[Int] = [sortIntervals[0][1]]
        for i in sortIntervals[1..<sortIntervals.count] {
            var hasSufficientRoom = 0
            for endTime in rooms {
                if i[0] > endTime {
                    hasSufficientRoom = 1
                }
            }
            if hasSufficientRoom == 0 {
                rooms.append(i[1])
            }
        }
        return rooms.count
}
meetingRooms3(intervals: array)


// merge times =====================================

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
