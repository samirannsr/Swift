//: [Previous](@previous)

import Foundation
import UIKit


//: [Next](@next)
class MyQueue<T> {
    
    var items = [T]()
    
     func enQueue(item: T) {
        DispatchQueue.global().async {
            self.items.append(item)
        }
    }
     func deQueue() -> T? {
        DispatchQueue.global(qos: .background).sync {
            return items.isEmpty ? nil : items.remove(at: 0)
        }
    }
    var count: Int {
        DispatchQueue.global(qos: .background).sync {
            return items.count
        }
    }
    var peek: T? {
        DispatchQueue.global(qos: .background).sync {
            return items.first // items[0]
        }
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
}


var qu = MyQueue<Int>()
qu.enQueue(item: 1)
qu.enQueue(item: 2)
qu.enQueue(item: 3)
qu.enQueue(item: 4)
print(qu.items)
qu.count
qu.peek
qu.deQueue()
qu.count
qu.peek
print(qu.items)


