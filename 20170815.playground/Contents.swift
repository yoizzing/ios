class classA : ClassbDelegateProtocol{ // protocol을 따르고 있다는 것 명시
    
    func clickBtn() {
        let insB = classB(delegate: self) // 본인 주소값 전달
        insB.methodB()
    }
    
    func methodA(){
        print("methodA")
    }
}


class classB{
    
    var delegate:Any! // Any : 모든 인스턴스 타입을 담을 수 있음, 접근할 수 있는 property 제한적
    var delgate2:AnyObject! // AnyObject : class instance만 담을 수 있음 - enum, struct는 불가
    var delegate3 : classA // 주소값 받기 위한 propery
    
    init(delegate:classA){
        self.delegate3 = delegate  // classA의 주소를 저장하기 위한 variable
    }
    
    
    func methodB() {
        
        print("methodB")
        self.delegate3.methodA()
        
    }
}

// classA가 b를 호출하고 b가 하던일을 마치면 원래 classa로 돌아옴


let insA = classA()
insA.clickBtn()

// protocol
class ClassbDelegateProtocol{
    func methodA()
    }
}

class classD{
    var delegate:ClassbDelegateProtocol
    
    init(delegate:ClassbDelegateProtocol){
        self.delegate = delegate
    }
    
    func methodD() {
        print("methodB")
        self.delegate.methodA()
    }
}

