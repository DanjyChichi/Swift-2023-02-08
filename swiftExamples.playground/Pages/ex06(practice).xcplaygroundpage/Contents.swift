import UIKit

//연습문제1
//옵셔널 변수 myStr을 선언하고, "Hello"로 초기화 한 후에 if 구문과 if let 바인딩을 통해 각각 myStr 값을 출력하시오.
// null 일 때는 nill입니다.
// null이 아닐 때는 nil이 아님:실제값을 출력하시오

var myStr : String? = "Hello"

if myStr != nil {
    print("nil이 아님 : \(myStr!)")
}else{
    print("nil입니다.")
}

if let tempStr = myStr{
    print("nil이 아님 : \(tempStr)")
}else{
    print("nil입니다.")
}


var myNullable2 : Int? = 10

//guard let이 if let과 다른점
//1. 함수안에서만 사용가능(else 블록만 있고, return 반드시 사용해야 됨.)
//2. guard let 상수는 guard구문 밖에서도 사용가능함.
//Guard문을 이용하여
//1. guard let 구문 : 바인딩 변수 가져오기
// _ : 함수호출 시 매개변수 이름을 생략해도 되게 한다.
func myFunction(_ myNullable:Int? ){
    guard let temp5 = myNullable2 else{
        print("nil입니다.")
        return
    }
    print("nil이 아닙니다.\(temp5)")
}
myFunction(myNullable2)

//if문을 이용한 방법
func myFunction2(_ myNullable:Int? ) {
    if myNullable == nil { return }
    print( "nil이 아닙니다2.\(myNullable!)")
}
myFunction2( 10 )
//2. guard else 구문 : nil일 때 변수 탈출! 이른 탈출.
func myFunction3(_ myInt:Int?){
    guard myInt != nil else {
        print("nil입니다.")
        return
    }
    print("nil이 아닙니다3.\(myInt!)")
}
myFunction3(nil)
