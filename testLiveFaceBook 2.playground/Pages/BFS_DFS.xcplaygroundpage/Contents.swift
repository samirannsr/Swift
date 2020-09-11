//: [Previous](@previous)
import Foundation


//func depthFirstSearch(_ graph: Graph, source: Node) -> [String] {
//  var nodesExplored = [source.label]
//  source.visited = true
//
//  for edge in source.neighbors {
//    if !edge.neighbor.visited {
//      nodesExplored += depthFirstSearch(graph, source: edge.neighbor)
//    }
//  }
//  return nodesExplored
//}
//
//func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
//  var queue = Queue<Node>()
//  queue.enqueue(source)
//
//  var nodesExplored = [source.label]
//  source.visited = true
//
//  while let node = queue.dequeue() {
//    for edge in node.neighbors {
//      let neighborNode = edge.neighbor
//      if !neighborNode.visited {
//        queue.enqueue(neighborNode)
//        neighborNode.visited = true
//        nodesExplored.append(neighborNode.label)
//      }
//    }
//  }
//
//  return nodesExplored
//}







var resalt: [Int] = []

class Tree {
    var vertex : Int!
    var nodes = [Tree]()
    
    subscript(_ i: Int)-> Tree? {
        return   nodes.filter{$0.vertex == i}.first
    }
}
func DFS(g: Tree) {
    resalt.append(g.vertex)
    for i in g.nodes {
        DFSUnit(i)
    }
}

func DFSUnit(_ v: Tree) {
    if !resalt.contains(v.vertex){
    resalt.append(v.vertex)
    if  v.nodes.count > 0 {
        for i in v.nodes {
            DFSUnit(i)
        }
        }
    }
}





func BFS (g:Tree) {    
    var queue = [Int]()
    var subTree = g
    queue.append(g.vertex)
    resalt.append(g.vertex)
    while  queue.count > 0 {
        if subTree.nodes.count > 0 {
            subTree.nodes.forEach{
                queue.append($0.vertex)
                resalt.append($0.vertex)}
                queue.remove(at: 0)
            subTree = subTree[queue.first!]!
            print(subTree,queue)
        }
    }
}


var tree2 = Tree()
tree2.vertex = 2
var tree3 = Tree()
tree3.vertex = 3
var tree4 = Tree()
tree4.vertex = 4
var tree5 = Tree()
tree5.vertex = 5
var tree6 = Tree()
tree6.vertex = 6
var tree1 = Tree()
tree1.vertex = 1
tree1.nodes = [tree2,tree3]
tree2.nodes = [tree4, tree5]
tree5.nodes = [tree6]


BFS(g: tree1)

print(resalt)


