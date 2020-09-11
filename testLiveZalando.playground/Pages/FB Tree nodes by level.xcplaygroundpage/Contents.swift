//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
//- -Print Tree nodes level by level   /// BFS

class Node<T> {
    var value:T
    var left:Node?
    var right:Node?
    init(value:T) {
        self.value = value
    }
}

func treeLevels<T>(node:Node<T>){
    var queue = [Node<T>]()
    queue.append(node)

    while !queue.isEmpty{

    let n = queue.removeFirst()
    //f(n.value)

    if let left = n.left{
    queue.append(left)
    }
    if let right = n.right{
    queue.append(right)
    }
    }
}

var root = Node(value: 1)
root.left = Node(value: 2)
root.right = Node(value: 3)
root.right?.left = Node(value: 4)
root.right?.right = Node(value: 5)

treeLevels(node: root)//, f: {print($0)})
