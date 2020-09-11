//import UIKit


import Foundation
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

let serialQueue = DispatchQueue(label: "com.queue.serial")


















sleep(3)
PlaygroundPage.current.finishExecution()

//serialQueue.async {
//    print("Task 1")
//    print("1 is on main thread: \(Thread.isMainThread)")
//}
//
//serialQueue.async {
//    print("Task 2")
//    print("2 is on main thread: \(Thread.isMainThread)")
//}
//
//serialQueue.async {
//    print("Task 3")
//    print("3 is on main thread: \(Thread.isMainThread)")
//}
//
//serialQueue.async {
//    print("Task 4")
//    print("4 is on main thread: \(Thread.isMainThread)")
//}
//
//
//
//
//serialQueue.sync  {
//    print("Task 11")
//    print("11 is on main thread: \(Thread.isMainThread)-is MultiTheread: \(Thread.isMainThread) -- thraed name \(Thread.current)")
//}
//
//serialQueue.sync {
//    print("Task 22")
//    print("22 is on main thread: \(Thread.isMainThread)-is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
//
//serialQueue.sync {
//    print("Task 33")
//    print("33 is on main thread: \(Thread.isMainThread)-is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
//
//serialQueue.sync {
//    print("Task 44")
//    print("44 is on main thread: \(Thread.isMainThread)-is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
let concurrentQueue = DispatchQueue(label: "com.queue.concurrent", attributes: .concurrent)

//concurrentQueue.async {
//    print("Task ac11")
//    print("ac11 is on main thread: \(Thread.isMainThread)")
//}
//
//concurrentQueue.async {
//    print("Task ac22")
//    print("ac22 is on main thread: \(Thread.isMainThread)")
//    print("ac222 is on main thread: \(Thread.isMainThread)")
//    print("ac2222 is on main thread: \(Thread.isMainThread)")
//    print("ac22222 is on main thread: \(Thread.isMainThread)")
//}
//
//concurrentQueue.async {
//    print("Task ac33")
//    print("ac33 is on main thread: \(Thread.isMainThread)")
//     print("ac333 is on main thread: \(Thread.isMainThread)")
//}
//
//concurrentQueue.async {
//    print("Task ac44")
//    print("ac44 is on main thread: \(Thread.isMainThread)")
//}

//===============

//concurrentQueue.sync {
//    print("Task sc11")
//    print("sc11 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
//
//concurrentQueue.sync {
//    print("Task sc22")
//    print("sc22 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
//
//concurrentQueue.sync {
//    print("Task sc33")
//    print("sc33 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}
//
//concurrentQueue.sync {
//    print("Task sc44")
//    print("sc44 is on main thread: \(Thread.isMainThread) --is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//}

//Get main queue asynchronously

//DispatchQueue.main.async {
//        print("Task main1 async")
//        print("M-async-1 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//    print("M-async-11 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//DispatchQueue.main.async {
//        print("Task main2 async")
//        print("M-async-2 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//    print("M-async-22 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//Get main queue synchronously

//DispatchQueue.main.sync {
//   print("Task main1 sync")
//        print("M-sync-1 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//To get one of the background thread

//DispatchQueue.global(qos: .background).async {
//    print("Task backgrond async1")
//        print("backgrond-async-1 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//DispatchQueue.global(qos: .background).async {
//    print("Task backgrond async2")
//        print("backgrond-async-2 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//
//DispatchQueue.global(qos: .background).sync {
//    print("Task backgrond sync1")
//        print("backgrond-sync-1 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//DispatchQueue.global(qos: .background).sync {
//    print("Task backgrond sync2")
//        print("backgrond-sync-2 is on main thread: \(Thread.isMainThread)--is MultiTheread: \(Thread.isMultiThreaded()) -- thraed name \(Thread.current)")
//
//}
//
//var array = [Int]()
//
//func getTime()-> String{
//let date = Date()
//let calendar = Calendar.current
//    let secound = calendar.component(.second, from: date)
//let minutes = calendar.component(.minute, from: date)
//return String(minutes) + ":" + String(secound)
//}
//
//
//let dispatchQroup = DispatchGroup()
//
//let costomQueu = DispatchQueue.init(label: "q1")
//func run(_ after:Int,compeletion: @escaping ()-> Void) {
//let delay = DispatchTime.now() + .seconds(after)
//    DispatchQueue.main.asyncAfter(deadline: delay) {
//    compeletion()
//}
//}
//
//
//
//func write1() {
//    dispatchQroup.enter()
//    run(2) {
//        array.append(1)
//        print("write1",array, getTime())
//        dispatchQroup.leave()
//    }
//}
//func read1() {
//    dispatchQroup.enter()
//    run(2) {
//        //array.append(1)
//           print("read1",array, getTime())
//         dispatchQroup.leave()
//    }
//}
//func write2() {
//    dispatchQroup.enter()
//    run(6) {
//
//        array.append(2)
//           print("write2",array, getTime())
//         dispatchQroup.leave()
//    }
//}
//func write3() {
//    //dispatchQroup.enter()
//    run(8) {
//        array.append(3)
//        print("write3",array, getTime())
//        // dispatchQroup.leave()
//    }
//}
//
//func call(){
////    run {
////        write1()
////    }
////    run {
////        read1()
////    }
////    run {
////        write2()
////    }
////    run {
////        write3()
////    }
//    write1()
//    read1()
//    write2()
//    write3()
//    dispatchQroup.notify(queue: .main){
//    print("call",getTime())
//    }
//}
//
//call()
var Q1 = DispatchQueue(label: "q1", attributes: .concurrent)
//var Q2 = DispatchQueue(label: "q2")// , attributes: .concurrent)

var counter = 0

func main(){

//Q1.sync {
//    print("s1" + "_ \(counter )")
//    print("T1"  + "_ \(counter )")
//
//    Q1.async {
//        print("s2"  + "_ \(counter )")
//    }
//    Q1.async {
//        print("s3"  + "_ \(counter )")
//    }
//
//}
    
//    Q1.sync {
//        print("s1" + "_ \(counter )")
//
//    }
//        print("T1"  + "_ \(counter )")
//
//        Q1.sync {
//            print("s1"  + "_ \(counter )")
////            Q1.sync {
////                print("s1" + "_ \(counter )")
////
////            }
//            print("s2"  + "_ \(counter )")
//        }
//
//        Q1.async {
//            print("a1"  + "_ \(counter )")
//        }
//
//}
//
//for i in 1...5 {
//main()
//    counter += 1
//}
