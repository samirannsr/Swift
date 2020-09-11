//: [Previous](@previous)

import Foundation

/*nput: 1 -> 2 -> 3 -> 4->5 Output: 2 -> 1 -> 4 -> 3 -> 5*/


class linkedList {
    var data: Int
    var next: linkedList?
    
    init(_ data: Int,_ next: linkedList? = nil) {
        self.data = data
        self.next = next
    }
    
    
}


var array = [linkedList]()
var n5 = linkedList(5)
var n4 = linkedList(4,n5)
var n3 =  linkedList(3,n4)
var n2 =  linkedList(2,n3)
var n1 =  linkedList(1,n2)

print(n1)


func swapNodes(node: linkedList) -> linkedList {
    var current: linkedList? = node
    var nextNode: linkedList? = node.next

    var headeNode: linkedList?
    if nextNode != nil {
        headeNode = nextNode
    }
    else {
        headeNode = current
    }

    var lastCycleNode: linkedList? = nil

    while nextNode != nil {
        let tempNode = nextNode?.next
        nextNode?.next = current
        current?.next = tempNode

        if lastCycleNode != nil {
            lastCycleNode?.next = nextNode
        }

        lastCycleNode = current

        current = current?.next
        nextNode = current?.next

    }
    return headeNode!
}

let p = swapNodes(node: n1)

