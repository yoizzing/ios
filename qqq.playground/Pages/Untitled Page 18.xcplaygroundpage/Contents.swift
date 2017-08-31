//: [Previous](@previous)

import Foundation

class Person{
    let name:String
    init(name:String){
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit{
        print("\(name) is being deinititialized")
    }
}

var reference1:Person?
var reference2:Person?
var reference3:Person?

reference1 = Person(name: "yagom")
reference2 = reference1
reference3 = reference1


reference3 = nil
reference2 = nil
reference1 = nil


var globalReference:Person?
func foo(){
    let yagom:Person = Person(name:"goya")
    
    globalReference = yagom
}

foo()



//: [Next](@next)
