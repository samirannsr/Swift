//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


class Node<T> where T: Equatable {
    var left: Node<T>?
    var right:  Node<T>?
    var  data: T!

    init(data: T, left: Node? = nil , right: Node? = nil) {
        self.data = data
        self.left = left
        self.right = right
    }
      // standard getters and setters
  }

// 2 tree is equal

func  equals<T>(_ root1: Node<T>?, _ root2: Node<T>?) -> Bool {
 
    if root1 == nil && root2 == nil {
        return true
    }
    if root1 == nil || root2 == nil {
        return false
    }
    return root1!.data ==  root2!.data &&
        equals(root1!.left, root2!.left) &&
        equals(root1!.right, root2!.right)
}

//test
let right = Node(data: 3)
let left = Node(data: 2)
let noder = Node(data:1,left: left, right: right)

let right1 = Node(data: 3)
let left1 = Node(data: 2)
let nodel = Node(data:1,left: left1, right: right1)

let root1 = Node(data:1,left: nodel, right: noder)


let right21 = Node(data: 4)
let left21 = Node(data: 2)
let noder12 = Node(data:1,left: left21, right: right21)

let right22 = Node(data: 3)
let left22 = Node(data: 2)
let noder2 = Node(data:1,left: left22, right: right22)

let root2 = Node(data:1,left: noder12, right: noder2)


equals(root1,root2)
