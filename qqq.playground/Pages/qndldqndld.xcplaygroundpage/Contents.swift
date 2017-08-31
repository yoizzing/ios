//: [Previous](@previous)

class Person{
    let name:String
    var age:Int?
    
    init?(name:String){
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
    
    init?(name:String, age:Int){
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age  = age
    }
}

let yagom:Person? = Person(name: "yagom", age: 99)

if let person:Person = yagom{
    print(person.name)
}else{
    print("Person wasn't initialized")
}



//: [Next](@next)
