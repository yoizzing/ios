//: [Previous](@previous)

import Foundation

@objc protocol Moveable{ // @objc --> objectiveC의 준말 : 한 project 안에서 objectiveC와 혼용해서  swift 사용할 수 있음
    func walk()
    @objc optional func fly() //  메소드와 프로토콜에 @objc 써야 선택적 사용 가능(?)
}

class Tiger:NSObject, Moveable{ // ObjectivceC 위해 NSObject 상속
        func walk(){
            print("Tiger is walking")
        }
}

class Bird:NSObject, Moveable{
    func walk(){
        print("Bired is walking")
    }
    
    func fly(){
        print("Birds is flying")
    }
}

let tiger:Tiger = Tiger()
let bird:Bird = Bird()

tiger.walk()
bird.fly()

var moveableInstance:Moveable = tiger
moveableInstance.fly?() // fly가 있으면 실행 ()

moveableInstance = bird
moveableInstance.fly?()


//: [Next](@next)
