//: [Previous](@previous)

import Foundation

struct Point{
    var x:Int?
    var y:Int
    
    init(newX:Int, newY:Int) {
        self.x = newX
        self.y = newY
    }
    
    mutating func newPoint(x:Int, y:Int){ // 함수 값 바꾸려면 앞에 muataing 써줘야함
        self.x = x
        self.y = y
    }
}

struct Size{
    var width:Int?
    var height:Int
}

struct Frame {
    var point:Point
    var size:Size?
    
}


class Shape{
    var frame:Frame?
    
    init(frame:Frame?){
        self.frame = frame
    }
}

var frame = Frame(point:Point(newX: 10, newY: 10), size:Size(width: 1001, height: 100 ))
var shape = Shape(frame: frame)

if let oFrame = shape.frame { // optional 처리방법1
    if let oSize = oFrame.size{
        if let oWidth = oSize.width{
            print(oSize)
        }
    }
}

let uWidth = shape.frame?.size?.width // optional chainning -- frame이 있을때 size를 찾고 size가 있을 때 width를 찾음
                                      // 반환값은 optional임

shape.frame!.size!.width  // optional 처리방법2  - ! 를 이용해서 강제 oprtional 해제






//: [Next](@next)
