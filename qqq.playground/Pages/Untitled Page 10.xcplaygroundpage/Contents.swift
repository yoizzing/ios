//: [Previous](@previous)

import Foundation

protocol Readable{
    func read()
}

protocol Writeable{
    func write()
}

protocol ReadDpeakable:Readable{
    func speak()
}

protocol ReadWriteSpeakable:Readable, Writeable{
    func speak()
}

class SomeClass:ReadWriteSpeakable{
    func read(){
        print("Read")
    }
    
    func write(){
        print("Write")
    }
    
    func speak(){
        print("speak")
    }
}

//: [Next](@next)
