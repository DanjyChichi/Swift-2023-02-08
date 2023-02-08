import UIKit

//옵셔널(Optional) 타입
//  : nil일 수도 있는 변수에 사용함
//  : nil값 체크를 하기 위해 사용
//  : 스위프트 언어의 중요한 특징 중 하나

//자바에서 널 체크
// if( myObj == null ) {
//   println("null입니다.");
// }
// 단점 : 1. 개발자가 if를 잊어버린다.
//       2. 코드가 좀 길어진다.

//초기화 하지 않으면 변수를 사용할수없음
//  var myInt : Int
//print( myInt )
//일반 변수에는 nil 값을 넣을 수 없음.
//  var myInt2 : Int = nil
//nil 일수록 있는 변수는 옵셔널 변수로 설정한다.
//  var myNullable : Int? = nil

//데이터 타입 뒤에 ? 물음표를 넣으면 옵셔널 변수가 된다.
//Int? Float? Double? Bool? String?

//옵셔널 변수를 안전하게 사용하는 방법
var myNullable2 : Int? = nil
//조건문 if를 사용해서
if myNullable2 != nil {
    print("nil이 아닙니다.")
}else{
    print("nil 입니다!")
}

myNullable2

myNullable2 = 10
if myNullable2 != nil {
    //옵셔널변수의 값을 가져오려면 !느낌표 연산자
    //force unwrapping(강제 언래핑)
    print( myNullable2! * 2 )
}else{
    print("nil 입니다.")
}

//옵셔널 바인딩을 이용해서 : if let(if var) 구문
//Optional Binding
if let tempInt = myNullable2 {
    print("tempInt는 nil이 아님")
    print("tempInt 값은 \(tempInt)")
}else{
    print("tempInt는 nil입니다.")
}

var myNullable3: String? = "홍길동"
var myNullable4: Double? = nil
//옵셔널 바인딩 여러개 하기
if let temp1 = myNullable2, let temp2 = myNullable3, let temp3 = myNullable4 {
    print("temp1,2,3은 nil이 아님")
}else{
    print("temp1,2,3중에 하나가 nil입니다.")
}

//옵셔널 바인딩과 조건식을 이용하기
myNullable2 = 20
if let temp1 = myNullable2, temp1 == 10 {
    print( "temp1은 nil이 아니고 10과 같음" )
}else{
    print( "temp1은 nil이거나 10과 같지않음" )
}

//연습문제1
//옵셔널 변수 myStr을 선언하고, "Hello"로 초기화 한 후에
//if 구문과 if let 바인딩을 통해 각각 myStr값을 출력하시오.
// 널 일때는 "nil입니다"
// 널이 아닐 때는 "nil이 아님:실제값"을 출력하시오.
var myStr : String? = "Hello"
if myStr != nil {
    print( "nil이 아님:\(myStr!)" )
}else{
    print( "nil입니다." )
}
if let temp1 = myStr {
    print( "nil이 아님:\(temp1)" )
}else{
    print("nil입니다.")
}
//guard let이 if let과의 차이점
//1. 함수안에서만 사용가능(else 블록만 있고, return 반드시 사용해야 됨.)
//2. guard let 상수는 guard구문 밖에서도 사용가능함.

// Guard문을 이용하여
// 1. guard let 구문 : 바인딩 변수 가져오기
// _ : 함수호출시 매개변수이름을 생략해도 되게 함.
func myFunction(_ myInt : Int? ) {
    guard let temp = myInt else{
        print("nil입니다.")
        return
    }
    print( "nil이 아닙니다.\(temp)")
}
myFunction( 10 )
myFunction( nil )

// if문을 이용한 방법
func myFunction2(_ myInt:Int? ) {
    if myInt == nil { return }
    print( "nil이 아닙니다2.\(myInt!)" )
}
myFunction2( 10 )

// 2. guard else 구문 : nil일때 함수 탈출! 이른 탈출.
func myFunction3(_ myInt:Int? ) {
    guard myInt != nil else { return }
    print( "nil이 아닙니다3.\(myInt!)" )
}
myFunction3( nil )
