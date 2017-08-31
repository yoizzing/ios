//: [Previous](@previous)

import Foundation

protocol PersonBDelegate{
    func send()
}



class PersonA:PersonBDelegate{
     init(){
        let personB = PersonB()
        personB.delegate = self
        personB.callMe()
    }
    func send() {
        print("Received")
    }
}

class PersonB{
    var delegate:PersonBDelegate?
    
    func callMe() {
        delegate?.send()
    }
}

let p1 = PersonA()

protocol SomeProtocol{
    var settableProperty:String{get set}
    var notNeedToBeSettableProperty:String{get}
}


//: [Next](@next)
