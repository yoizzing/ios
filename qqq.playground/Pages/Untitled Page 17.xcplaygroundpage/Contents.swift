//: [Previous](@previous)

import Foundation

struct Student{
    var name:String
    var number:Int
}
//
//class School{
//    var number:Int = 0
//    var students:[Student] = [Student]()
//    
//    func addStudent(name:String) {
//        let student:Student = Student(name: name, number: self.number)
//        self.students.append(student)
//        self.number += 1
//    }
//    
//    func addStudent(names:String...){ // 여러 개 동일한 인자값 받을 수 있음
//        for name in names{
//            self.addStudent(name: name)
//        }
//    }
//    
//    subscript(index:Int) -> Student? {
//        get{
//            if index < self.number{
//                return self.students[index]
//            }
//            
//            return nil
//        }
//        
//        set{
//            guard var newStudent:student = newValue else{
//                return
//            }
//            
//            var number:Int = index
//            
//            if index > self.number{
//                number = self.number
//                self.number += 1
//            }
//            
//            newStudent.number = number
//            self.students[number] = newStudent
//            
//        }
//            
//    }
//    
//    subscript(name:String) -> Int?{
//        get{
//            return self.students.filter{$0.name == name}.first?.number
//        }
//        
//        set{
//            guard var number:Int = newValue else{
//                return
//            }
//            if number > self.number{
//                number = self.number
//                self.number += 1
//            }
//            
//            let newStudent:Student = Student(name: name, number: number)
//            self.students[number] = newStudent
//            
//        }
//    }
//    
//    subscript(name:String, number:Int) -> Student?{
//        return self.students.filter{ $0.name == name && $0.number == number}.first
//    }
//}


//let highSchool:School = School()
//highSchool.addStudent(names: "MiJeong", "JuHyun", "Jiyong", "seongUk", "MoonDum")
//
//let aStudent:Student? = highSchool[1]
//print("\(aStudent?.number) \(aStudent?.name)")


