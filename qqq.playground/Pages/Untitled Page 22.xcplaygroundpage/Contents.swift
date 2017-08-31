//: [Previous](@previous)

import Foundation

class Person{
    let name:String
    let hobby:String?
    
    lazy var introduce:() -> String = { [ weak self ] in // self가 약한참조를 가지게 됨
        
//        guard let 'self' = self else{
//            return
//        }
        
        var introduction:String = "My name is \(self.name)"
        
        guard let hobby = self.hobby else{
            return introduction
        }
        
        introduction += " "
        introduction += "My hobby is \(hobby)"
        
        return introduction
    }
    
    init(name:String, hobby:String? = nil){
        self.name = name
        self.hobby = hobby
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

var yagom: Person? = Person(name: "yagom", hobby: "eating")
print(yagom?.introduce())
yagom = nil
//: [Next](@next)
