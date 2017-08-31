//: [Previous](@previous)

import Foundation

class Shape{
    var x:Float
    var y:Float
    var width:Float
    var height:Float
    
    init(x:Float, y:Float, width:Float, height:Float) { // 지정초기화 - designated initialization // 모든 property 초기화
        self.x      = x
        self.y      = y
        self.width  = width
        self.height = height
    }
    
    convenience init(x:Float, y:Float){ // 일부만 초기화 하고싶을 땡~~ // convenience 초기화, designated초기화 사용(호출)
        self.init(x:x, y:y, width:0, height:0)
    }
    
    convenience init(x:Float,y:Float,width:Float){
        self.init(x: x, y: y, width:width, height:0)
    }
}

//: [Next](@next)


