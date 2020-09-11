
import Foundation

public class LinkedListNode<T> {
  var value: T
  var next: LinkedListNode?
  weak var previous: LinkedListNode?

  public init(_ value: T) {
    self.value = value
    
  }
}

public class LinkedList<T> {
  public typealias Node = LinkedListNode<T>

  private var head: Node?

    init(value: T){
        self.head = LinkedListNode(value)
    }
    
  public var isEmpty: Bool {
    return head == nil
  }

  public var first: Node? {
    return head
  }


public var last: Node? {
    guard var node = head else {
        return nil
    }

  while let next = node.next {
    node = next
  }
  return node
}

//let list = LinkedList<String>()
//list.isEmpty   // true
//list.first     // nil

//var node: Node? = head
//     while node != nil && node!.next != nil {
//       node = node!.next
//     }

public func append(value: T) {
  let newNode = Node(value)
  if let lastNode = last {
    newNode.previous = lastNode
    lastNode.next = newNode
  } else {
    head = newNode
  }
}

//list.append("Hello")
//list.isEmpty         // false
//list.first!.value    // "Hello"
//list.last!.value     // "Hello"
//
//list.append("World")
//list.first!.value    // "Hello"
//list.last!.value     // "World"
//
//list.first!.previous          // nil
//list.first!.next!.value       // "World"
//list.last!.previous!.value    // "Hello"
//list.last!.next               // nil


public var count: Int {
  guard var node = head else {
    return 0
  }

  var count = 1
  while let next = node.next {
    node = next
    count += 1
  }
  return count
}

public func nodeAt(atIndex index: Int) -> Node {
  if index == 0 {
    return head!
  } else {
    var node = head!.next
    for _ in 1..<index {
      node = node?.next
      if node == nil { //(*1)
        break
      }
    }
    return node!
  }
}

//list.nodeAt(0)!.value    // "Hello"
//list.nodeAt(1)!.value    // "World"
//// list.nodeAt(2)           // crash


public subscript(index: Int) -> T {
  let node = nodeAt(atIndex: index)
  return node.value
}

  public func insert(_ node: Node, atIndex index: Int) {
   let newNode = node
   if index == 0 {
     newNode.next = head
     head?.previous = newNode
     head = newNode
   } else {
     let prev = self.nodeAt(atIndex: index-1)
     let next = prev.next

     newNode.previous = prev
     newNode.next = prev.next
     prev.next = newNode
     next?.previous = newNode
   }
}

public func removeAll() {
  head = nil
}

public func remove(node: Node) -> T {
  let prev = node.previous
  let next = node.next

  if let prev = prev {
    prev.next = next
  } else {
    head = next
  }
  next?.previous = prev

  node.previous = nil
  node.next = nil
  return node.value
}

public func removeLast() -> T {
   assert(!isEmpty)
   return remove(node: last!)
 }

 public func removeAt(_ index: Int) -> T {
   let node = nodeAt(atIndex: index)
  // assert(node != nil)
   return remove(node: node)
 }
}
