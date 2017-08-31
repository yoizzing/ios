//: [Previous](@previous)

import Foundation

class Shape{
    var x:Int
    var y:Int
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    
    convenience init(x:Int){
        self.init(x: x, y: 0)
    }
}

class Rectangle:Shape{
    var width:Int
    var height:Int
    init(x:Int, y:Int, width:Int, height:Int){
        self.width = width
        self.height = height
        super.init(x: x, y: y)
    }
    
    convenience init(x: Int, y: Int, width:Int) {
        self.init(x: x, y: y, width: width, height: 0)
    }
}



//: [Next](@next)
