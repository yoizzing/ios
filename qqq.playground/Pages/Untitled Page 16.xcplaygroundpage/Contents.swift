//: [Previous](@previous)

import Foundation

struct Student{
    var name:String
    var number:Int
}

class School{
    var number:Int = 0
    var students:[Student] = [Student]()
    
    func addStudent(name:String) {
        let student:Student = Student(name: name, number: self.number)
        self.students.append(student)
        self.number += 1
    }
    
    func addStudent(names:String...){ // 여러 개 동일한 인자값 받을 수 있음
        for name in names{
            self.addStudent(name: name)
        }
    }
    
    subscript(index:Int) -> Student? {
        if index < self.number {
                return self.students[index]
            }
        return nil
        }
}

let highSchool:School = School()
highSchool.addStudent(names: "MiJeong", "JuHyun", "Jiyong", "seongUk", "MoonDum")

let aStudent:Student? = highSchool[1]
print("\(aStudent?.number) \(aStudent?.name)")




//: [Next](@next)
