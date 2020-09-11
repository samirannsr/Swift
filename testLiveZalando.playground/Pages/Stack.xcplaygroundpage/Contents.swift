
import UIKit
import Foundation


//====struct is thread safe becouse each thread give a deep cope of propert


//
protocol StackProtocol{
    associatedtype T
    var  count:Int { get}
    mutating func push(_ item: T)
    mutating func pop()-> T?
    func peek()-> T?
    
}

struct Stack<Element> : StackProtocol{

   var items: [Element] = []// [Element]()

   mutating func push(_ item: Element) {
        self.items.append(item)
    }

   mutating func pop() -> Element? {
     items.isEmpty ? nil : items.remove(at: items.count - 1)
    }

    func peek() -> Element? {
         items.isEmpty ? nil : items.last
    }

    var count: Int {
         items.count
    }

    mutating func append(_ item: Element) {
              self.push(item)
          }

    subscript(_ i: Int) -> Element? {
        return i < items.count ? items[i] : nil
    }
    
}


//====== with class
class Stack2<T> : StackProtocol {
    
    init(_ items: [T]) {
        self.items = items
    }
    
    var items: [T]
   // var items = [T]()
   
    let queue =  DispatchQueue(label: "queu",attributes: .concurrent)
    func push(_ item: T) {
        DispatchQueue.global().async(flags: .barrier){
            self.items.append(item)
        }
    }
    func pop() -> T? {
        DispatchQueue.global().sync {
        return items.isEmpty ? nil : items.remove(at: items.count - 1)
        }
    }
    var count: Int {
        DispatchQueue.global().sync {
            return items.count
        }
    }
    func peek() -> T? {
        DispatchQueue.global().sync {
        return items.last
        }
    }
    
    subscript(i: Int) -> T? {
        DispatchQueue.global().sync {
            return items.count > i ? items[i] : nil
        }
    }
    
    subscript(e elements: [T])-> [T] {
          items.append(contentsOf: elements)
        return items
    }
}

var stack2 = Stack2([11,22])
//var stack2 = Stack2([6,7])

stack2.push(1)
stack2.push(2)
stack2.push(3)
print(stack2.items)
stack2.peek()
stack2.count
print(stack2.items)
stack2.pop()
stack2.peek()
stack2.count
print(stack2.items)
let element = stack2[3]
let elements = stack2[e:[8,9]]
stack2.count

