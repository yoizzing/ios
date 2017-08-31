//: [Previous](@previous)

import Foundation

struct Intstack{
    var items = [Int]()
    mutating func push(_ item:Int){
        items.append(item)
    }
    
    mutating func pop() -> Int{
        return items.removeLast()
    }
}


var integerStack:Intstack = Intstack()

integerStack.push(3)
print(integerStack.items)

integerStack.push(2)
print(integerStack.items)

struct Stack<Element>{
    var items = [Element]()
    mutating func push(_ item:Element){
        items.append(item)
    }
    
    mutating func pop() -> Element{
        return items.removeLast()
    }
}

var doubleStack:Stack<Double> = Stack<Double>()

doubleStack.push(1.0)
print(doubleStack.items)

var stringStack:Stack<String> = Stack<String>()
stringStack.push("1")
print(stringStack.items)

//: [Next](@next)
