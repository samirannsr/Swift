
import Foundation

public struct Edge<T>: Equatable where T: Equatable, T: Hashable {

  public let from: Vertex<T>
  public let to: Vertex<T>

  public let weight: Double?

}

public struct Vertex<T>: Equatable where T: Equatable, T: Hashable {

  public var data: T
  public let index: Int

}


//=======================================

//The code: adjacency list

private class EdgeList<T> where T: Equatable, T: Hashable {

  var vertex: Vertex<T>
  var edges: [Edge<T>]? = nil

  init(vertex: Vertex<T>) {
    self.vertex = vertex
  }

  func addEdge(_ edge: Edge<T>) {
    edges?.append(edge)
  }



open  func createVertex(_ data: T) -> Vertex<T> {
  // check if the vertex already exists
  let matchingVertices = vertices.filter() { vertex in
    return vertex.data == data
  }

  if matchingVertices.count > 0 {
    return matchingVertices.last!
  }

  // if the vertex doesn't exist, create a new one
  let vertex = Vertex(data: data, index: adjacencyList.count)
  adjacencyList.append(EdgeList(vertex: vertex))
  return vertex
}
}
//=======================================
//The code: adjacency matrix
open override func createVertex(_ data: T) -> Vertex<T> {
  // check if the vertex already exists
  let matchingVertices = vertices.filter() { vertex in
    return vertex.data == data
  }

  if matchingVertices.count > 0 {
    return matchingVertices.last!
  }

  // if the vertex doesn't exist, create a new one
  let vertex = Vertex(data: data, index: adjacencyMatrix.count)

  // Expand each existing row to the right one column.
  for i in 0 ..< adjacencyMatrix.count {
    adjacencyMatrix[i].append(nil)
  }

  // Add one new row at the bottom.
  let newRow = [Double?](repeating: nil, count: adjacencyMatrix.count + 1)
  adjacencyMatrix.append(newRow)

  _vertices.append(vertex)

  return vertex
}

//[[nil, 1.0, nil, nil, nil]    v1
//[nil, nil, 1.0, nil, 3.2]    v2
//[nil, nil, nil, 4.5, nil]    v3
//[2.8, nil, nil, nil, nil]    v4
//[nil, nil, nil, nil, nil]]   v5

 //v1   v2   v3   v4   v5

//=======================================

//for graph in [AdjacencyMatrixGraph<Int>(), AdjacencyListGraph<Int>()] {
//
//  let v1 = graph.createVertex(1)
//  let v2 = graph.createVertex(2)
//  let v3 = graph.createVertex(3)
//  let v4 = graph.createVertex(4)
//  let v5 = graph.createVertex(5)
//
//  graph.addDirectedEdge(v1, to: v2, withWeight: 1.0)
//  graph.addDirectedEdge(v2, to: v3, withWeight: 1.0)
//  graph.addDirectedEdge(v3, to: v4, withWeight: 4.5)
//  graph.addDirectedEdge(v4, to: v1, withWeight: 2.8)
//  graph.addDirectedEdge(v2, to: v5, withWeight: 3.2)
//
//}
//
//graph.addUndirectedEdge(v1, to: v2, withWeight: 1.0)
// graph.addUndirectedEdge(v2, to: v3, withWeight: 1.0)
// graph.addUndirectedEdge(v3, to: v4, withWeight: 4.5)
// graph.addUndirectedEdge(v4, to: v1, withWeight: 2.8)
// graph.addUndirectedEdge(v2, to: v5, withWeight: 3.2)
