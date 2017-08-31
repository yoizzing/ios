//: [Previous](@previous)

import Foundation

func makeIncrementer(forIncrement amount:Int) -> (() -> Int){
    var runningTotal = 0
    func incrementaer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementaer
}


let incrementByTwo:(() -> Int) = makeIncrementer(forIncrement: 2)

let first:Int = incrementByTwo()
let second:Int = incrementByTwo()
let third:Int = incrementByTwo()



//: [Next](@next)
