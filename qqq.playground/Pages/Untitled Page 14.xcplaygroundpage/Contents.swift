//: [Previous](@previous)

import Foundation

func swapTwoInts( _ a:inout Int, _ b:inout Int){
    let temporaryA:Int = a
    a = b
    b = temporaryA
}

var numberOne:Int = 5
var numberTwo:Int = 10

swapTwoInts(&numberOne, &numberTwo)

print("\(numberOne), \(numberTwo)")


func swaptwoValues<T>(_ a: inout T, _ b: inout T){
    let temporaryA: T = a
    a = b
    b = temporaryA
}

swaptwoValues(&numberOne, &numberTwo)
print("\(numberOne), \(numberTwo)")

var stringOne:String = "A"
var stringTwo:String = "B"

swaptwoValues(&stringOne, &stringTwo)
print("\(stringOne), \(stringTwo)")


//: [Next](@next)
