import Foundation
////: [Previous](@previous)
//// _+_+_+_
////public func solution(_ N : Int) -> String {
////    // write your code in Swift 4.2.1 (Linux)
////    var result = ""
////    for i in 0...N {
////        if i % 2 == 0 {
////            result += "-"
////        } else {
////            result += "+"
////        }
////    }
////    return result
////}
////----------------------------
//
////insert 5 for reach max value
////public func solution(_ N : Int) -> Int {
////    // write your code in Swift 4.2.1 (Linux)
////    var finalResult = ""
////
////    if N < 0 {
////
////        var str = "\(N * -1)"
////        var result = ""
////        var isSet = false
////
////        for char in str {
////            var i = String(char)
////            if Int(i)! > 5 && !isSet {
////                result += "5" + i
////                isSet = true
////            } else {
////                result += i
////            }
////        }
////
////        if !isSet {
////            result = str + "5"
////        }
////
////        finalResult = "-" + result
////
////    } else {
////
////        var str = "\(N)"
////        var result = ""
////        var isSet = false
////
////        for char in str {
////            var i = String(char)
////            if Int(i)! < 5 && !isSet {
////                result += "5" + i
////                isSet = true
////            } else {
////                result += i
////            }
////        }
////
////        if !isSet {
////            result = str + "5"
////        }
////
////        finalResult = result
////
////    }
////
////    return Int(finalResult)!
////}
//
////-----------------------------
//var  a = [2,-2,3,0,4,-7]
//
//public func solution(_ A : inout [Int]) -> Int {
//
//    var isZero: Bool = true
//    for i in A {
//        if i != 0 {
//            isZero = false
//        }
//    }
//    if isZero {
//        return -1
//    } else {
//        let set = NSCountedSet()
//        for i in 0..<A.count  - 1 {
//            set.add(A[i])
//            let currentValue = A[i]
//            var tempSum = currentValue
//            for j in i + 1..<A.count {
//                tempSum += A[j]
//                set.add(tempSum)
//            }
//        }
//        set.add(A[A.count - 1])
//
////        for p in set {
////            print(p , set.count(for:  p))
////
////        }
//        return set.count(for: 0)
//    }
//
//}
//
//solution(&a)
//
//
//
////=============================== intersection
/*
func  getIntersection(_ A: [Int],_ B: [Int]) -> [Int] {
     var intersection = Array<Int>()

    var i = 0, j = 0

    while (i != A.count && j != B.count) {
        if A[i] == B[j] {
            intersection.append(A[i])
            i += 1
            j += 1
        } else if (A[i] > B[j]) {
            j += 1
        } else {
            i += 1
        }
    }

    return intersection;
}

let arrA = [4,6,8,10,15]
let arrB = [8,15,18]
getIntersection(arrA,arrB)
////-----
//
func  getIntersection2(_ A: [Int],_ B: [Int]) -> [Int] {
    let setA = Set(A)
    let setB = Set(B)
    return Array(setA.intersection(setB))
}

getIntersection2(arrA,arrB)


////==========rotation
func routaion(array: [Any], n: Int) -> [Any] {

    let firstPart = array[0..<n]
    let secondPart = array[n..<array.count]
    var returnArray =  secondPart
    returnArray += firstPart
    return Array(returnArray)
}
routaion(array: arrA, n: 2)
//
////==============reorient
//
func reoriention(array:[Any])-> [Any] {
   return array.reversed()
}

func reOriention2(array:[Any])-> [Any] {
    var i = 0
    var result: [Any] = array
    while i < array.count/2 {
        result.swapAt(i, array.count - (i + 1))
        i += 1
    }
  return result
}
reOriention2(array: arrA)


//---------------------------------sequence array
let array = [10, 46, 99, 00, 6]
var slice = array[2...4]
slice.startIndex
slice[slice.startIndex]
Array(slice)[0]



let A =  [1,2,3,4,5]
for i in A {
   // print(i)
}
for (index,i) in A.enumerated() {
   // print(index,i)
}

for i in 0..<A.count {
    //print(i)
}

for i in A.reversed() {
   // print(i)
}

for i in A[2..<A.count]{
   // print(i)
}
let A2 =  [5,2,3,4,5]
for  i in A2.sorted() {
   // print(i)
}
//
//-------------------------------sequence dictionary
let dic1 = [1:"a",2:"b",3:"c"]

if let value = dic1[1] {

    //print(value)
}

for i in dic1.keys {
    //print(i)
}

for i in dic1.values.sorted() {
   // print(i)
}
//--------------------------------max reapet string
let str = "samira nasiiiiri1"
var strArray = Array(str)
var dic = [Character: Int]()
//
//for i in strArray {
//    if  dic[i] != nil {
//        dic[i]! += 1
//    } else {
//        dic[i] = 1
//    }
//}

//for i in strArray {
//        dic[i, default: 0] += 1
//}
//print(dic.values.max() ?? "")
//
//var max = 0
//var set = NSCountedSet(array: strArray)
//var s = set.max{set.count(for:$0)<set.count(for:$1)}
//print(s ?? 0)
//

let q = [2,3,4]
let y = [2,3,4]

if  q == y  {
    print("t")
}


let string : String = "Hello"
let characters = Array(string)
print(characters)
["H", "e", "l", "l", "o"]



// C# program to find longest path of the tree
class GFG
{

    // Utility Pair class for storing
    // maximum distance Node with its distance
    public class Pair<T, V>
    {
        // maximum distance Node
        var first:T!

        // distance of maximum distance node
        var second:V!

        // Constructor
         init(first:T ,second: V )
        {
            self.first = first
            self.second = second
        }
    }

    // This class represents a undirected graph
    // using adjacency list
    class Graph
    {
         // No. of vertices

        var v: Int
        List<int>[] adj; //Adjacency List
        var adj = List<int>[]

        // Constructor
        public Graph(int V)
        {
            this.V = V;

            // Initializing Adjacency List
            adj = new List<int>[V];
            for(int i = 0; i < V; ++i)
            {
                adj[i] = new List<int>();
            }
        }

        // function to add an edge to graph
        public void addEdge(int s, int d)
        {
            adj[s].Add(d); // Add d to s's list.
            adj[d].Add(s); // Since the graph is undirected
        }

        // method returns farthest node and
        // its distance from node u
        public Pair<int, int> bfs(int u)
    {
        int[] dis = new int[V];

        // mark all distance with -1
        for(int i = 0; i < V; i++)
        dis[i] = -1;

        Queue<int> q = new Queue<int>();

        q.Enqueue(u);

        // distance of u from u will be 0
        dis[u] = 0;
        while (q.Count != 0)
        {
        int t = q.Dequeue();

        // loop for all adjacent nodes of node-t
        for(int i = 0; i < adj[t].Count; ++i)
        {
        int v = adj[t][i];

        // push node into queue only if
        // it is not visited already
        if(dis[v] == -1)
        {
        q.Enqueue(v);

        // make distance of v, one more
        // than distance of t
        dis[v] = dis[t] + 1;
        }
        }
        }
        int maxDis = 0;
        int nodeIdx = 0;

        // get farthest node distance and its index
        for(int i = 0; i < V; ++i)
        {
        if(dis[i] > maxDis)
        {
        maxDis = dis[i];
        nodeIdx = i;
        }
        }
        return new Pair<int, int>(nodeIdx, maxDis);
        }

        // method prints longest path of given tree
        public void longestPathLength()
        {
            Pair<int, int> t1, t2;

            // first bfs to find one end point of
            // longest path
            t1 = bfs(0);

            // second bfs to find actual longest path
            t2 = bfs(t1.first);

            Console.WriteLine("longest path is from " + t1.first +
            " to " + t2.first + " of length " + t2.second);
        }
}

