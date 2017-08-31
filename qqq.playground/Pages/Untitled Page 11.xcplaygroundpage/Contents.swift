//: [Previous](@previous)

import Foundation

protocol Named{
    var name:String { get }
}

protocol Aged{
    var age:Int { get }
}

struct Person:Named, Aged{
    var name:String
    var age:Int
}

struct Car:Named{
    var name:String
}

func celebrateBirthday(to celebrator:Named & Aged){
    print("Happy birthday \(celebrator.name)!! Now you aer \(celebrator.age)")
}

let yagom:Person = Person(name: "yagom", age: 99)
celebrateBirthday(to: yagom)

let myCar:Car = Car(name:"Bong Bong")
// celebrateBirthday(to: myCar)

print(yagom is Named)
print(yagom is Aged)

print(myCar is Named)
print(myCar is Aged)


if let castedInstance:Named = yagom as? Named{
    print("\(castedInstance) is Named")
}

if let castedInstance:Aged = yagom as? Aged{
    print("\(castedInstance) is Named")
}

if let castedInstance:Named = myCar as? Named{
    print("\(castedInstance) is Named")
}

if let castedInstance:Aged = myCar as? Aged{
    print("\(castedInstance) is Named")
}


//: [Next](@next)
