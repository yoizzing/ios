class person{
    var name:String
    private var age:Int
    var phoneNumber:String?
    var weight:Int = 0 { // property observer -- willSet과 didSet을 가짐, 스스로 값을 가질 수 있음
                         // willSet은 들어오는 값 체크 didSet은 값 쓰여지고 나서 하는...
        willSet{
            print("현재 값: \(self.weight) 새로운 값 : \(newValue)") // 새로운 값은 newValue로 접근
        }
        didSet{
            print("이전 값 : \(oldValue) 현재 값: \(self.weight)")  // 이전 값은 oldValue로 접근
        }
    }
    
    var koreaaAge:Int{ // 연산 property -- get과 set을 가질 수 있음 // 스스로 값을 가지지는 못하지만 연산만..
        get{
            return self.age + 1
        }
        set{
            self.age = newValue - 1  // newValue keyword : 들어오는 값 의미
        }
    }
    
    init(name:String, age:Int, phoneNumber:String?) {
        self.name = name
        self.age = age
        self.phoneNumber = phoneNumber
    }
    
    func walk() {
        print("talk")
    }
}


let p1 = person(name: "홍길동", age: 21, phoneNumber: nil)

print(p1.koreaaAge)
//p1.age = 20      // private로 설정되어서 접근할 수 없음
//print(p1.age)
p1.koreaaAge = 33  //  newValue에 33 할당
//print(p1.age)
print(p1.koreaaAge)

// 접근제어자 -- private, internal(default값 -- project 안에서..),
// property oberserver -- property 값 체크, 얜 저장 property임


p1.weight = 30
print(p1.weight)





class Shape{
    var x:Float
    var y:Float
    
    init(x:Float, y:Float){
        self.x = x
        self.y = y
    }
    
    func draw() {
        print("Draw")
    }
}

class Rectangle:Shape{
    var height:Float
    var width:Float
    
    init(x:Float, y:Float, width:Float, height:Float) {
        self.height = height
        self.width = width
        super.init(x: 0, y: 0)
    }
    
    override func draw() {
        super.draw()
        print("new Draw")
    }
}

let shape = Shape(x: 10, y: 10)
let rectangle = Rectangle(x:10, y:10, width: 20, height: 20)

shape.draw()
rectangle.draw()




