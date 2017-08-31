//: [Previous](@previous)

func myFunc(){
    var i:Int = 10
    func yourFunc(){
        print(i)
    }
}

// 13-6
let names:[String] = ["wizplan", "eric", "yagom", "jenny"]
let reversed:[String] = names.sorted{ (first, second) in
    return first > second
}

let reversed1:[String] = names.sorted{
    return $0 > $1 // 첫번째 매개변수 의미 $0, 두번째 매개변수 의미  $1
}



//: [Next](@next)
