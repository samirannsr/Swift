import Foundation
import UIKit


//BST
//InOrder
//BFS
//var  pre:Node?
//func convertTreeToLinkedList(p: Node?, head:inout Node?) {
//    if p == nil {return }
//    convertTreeToLinkedList(p: p?.left, head: &head)
//    if pre == nil {
//        head = p!
//    } else {
//        p?.left = pre
//        pre?.right = p
//    }
//    pre = p!
//    convertTreeToLinkedList(p: p?.right, head: &head)
//}

class BNode{

    var  left: BNode?
    var  right: BNode?
    var value: Int!
    init(value: Int) {
        self.value = value
    }
}
class LinkedListNode {
    var value : Int!
    var previous : LinkedListNode?
    var next : LinkedListNode?
    var isHead : Bool = false
    
}

 func LinklistToBinaryTree(head: LinkedListNode) -> BNode? {
    return listToBinaryTree(start: head, end: nil)
 }

 func listToBinaryTree(start: LinkedListNode?, end: LinkedListNode?) -> BNode? {
    if start?.value == end?.value { return nil }

 //find mid link list  by 2 to 1 step
    var middle: LinkedListNode? = start
    var runner: LinkedListNode? = start
    while runner?.value != end?.value {
        runner = runner?.next
        if runner?.value == end?.value { break }
        runner = runner?.next
        if runner?.value == end?.value { break }
        middle = middle?.next
    }
// all left midd : from start to midd => left node
 // all right midd : from midd.next to end => right node
 
    let root = BNode(value: middle!.value)
    root.left = listToBinaryTree(start: start, end: middle)
    root.right = listToBinaryTree(start: middle?.next, end: end)

    return root
 }
 
//NSArray: : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration
//NSInteger  // dont conform NSCopying
//NSNumber:NSValue : NSObject, NSCopying, NSSecureCoding
//NSString :  NSObject, NSCopying, NSMutableCopying, NSSecureCoding 

//let c = Date()
//var a = [2,3,[5,6]]
//a.append(c)
//

let g = NSDictionary()
g.copy() //NSNumber(),NSString,NSArray




