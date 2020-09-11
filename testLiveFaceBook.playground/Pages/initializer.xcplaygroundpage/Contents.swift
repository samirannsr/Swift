import Foundation
import UIKit

class Person {
    var name : String!
  static var age : Int = 11
    
    init(name: String, age: Int) {
        self.name = name
        Person.age = age
    }

    convenience init(test: String) {
        self.init(name: test, age: 11)
    }
     init() {
        self.name =  "ss"
    }
    convenience init(age: Int) {
        self.init(name: "name", age: age)

    }
    
}

class Teacher: Person{
    var corse: String = "math"
//    func f()  {
//        self.corse = "hist"
//        self.age = 8
//    }
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
        self.name = name
        self.corse = "hist2"
    }
    let p1 = Person(test: "farhad")
    var p2:Person!
    func callStruct() {
        print(Person.age)
        p2 = p1
        p2.name = "emran"
    }
   
  
}

//let aPerson = Person( name: "mary", age: 19)
//aPerson.age
//
//let bPerson = Person(age: 40)
//bPerson.age
//bPerson.name
//
//let cperson = Person()
//cperson.name
//cperson.age


//let ateacher = Teacher()
//ateacher.callStruct()
//ateacher.p1.name
//ateacher.p2.name
//ateacher.p1.name
//ateacher.age
//ateacher.name
//ateacher.corse
//ateacher.f()
//ateacher.corse
//ateacher.age


@propertyWrapper
struct wrap {
    var name : String?
    var wrappedValue : String? {
        get { return name }
        set { name = (newValue ?? "") + "#"
            projectedValue = true
        }
    }
    init(){
        self.name = "ali"
        self.projectedValue = false
    }
    var projectedValue: Bool
//    var projetedValue : Bool = false
}

class  A {
    
    @wrap var str : String?
    func pr() {
    print(str)
    }
    
}


var tt = A()
print(tt.$str)
//print(tt.$str)


@propertyWrapper final class Flag<Value> {
    let name: String
    var wrappedValue: Value

    fileprivate init(name: String, defaultValue: Value) {
        self.name = name
        self.wrappedValue = defaultValue
    }
}
struct FeatureFlags {
    @Flag(name: "feature-search", defaultValue: false)
   var isSearchEnabled: Bool

    @Flag(name: "experiment-note-limit", defaultValue: 999)
    var maximumNumberOfNotes: Int
}

let yy = FeatureFlags()
print(yy.isSearchEnabled)

let flags = FeatureFlags(isSearchEnabled: Flag(name: "String", defaultValue: true), maximumNumberOfNotes: Flag(name: "dfsf", defaultValue: 40))

let searchToggleVC =  flags.isSearchEnabled


