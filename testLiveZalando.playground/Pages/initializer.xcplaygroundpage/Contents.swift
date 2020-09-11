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
