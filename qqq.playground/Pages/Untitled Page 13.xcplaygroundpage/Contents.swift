//: [Previous](@previous)

import Foundation

protocol Named{
    func fly()
}

class Coffee{
    var name:String = ""
}

class Americano:Coffee{
    var iced:Bool = false
}

var coffee = Coffee()
coffee = Americano()

var americano = Americano()
// americano = Coffee()

class Latte:Named{
    var milk:Bool = false
    func fly(){
        print("fly")
    }
}

var latte:Named = Latte()
latte.fly()







//: [Next](@next)
