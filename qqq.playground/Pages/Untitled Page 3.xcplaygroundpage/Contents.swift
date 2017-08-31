//: [Previous](@previous)

import Foundation

typealias VoidVoidClosuer = () -> Void

let firstClosuer:VoidVoidClosuer = {
    print("Closuer A")
}

let secondClosuer:VoidVoidClosuer = {
    print("Closuer B")
}

func returnOneClosuer(first:@escaping VoidVoidClosuer,
                      second:@escaping VoidVoidClosuer,
                      shouldReturnFirstClosuer:Bool) -> VoidVoidClosuer{
    return shouldReturnFirstClosuer ? first : second
}

let returnedClosure:VoidVoidClosuer = returnOneClosuer(first: firstClosuer, second: secondClosuer, shouldReturnFirstClosuer: true)

returnedClosure()


var closures:[VoidVoidClosuer] = []

func appendClosure(closure:@escaping VoidVoidClosuer){
    closures.append(closure)
}


//: [Next](@next)
