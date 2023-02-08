import Foundation

//ex27
//검증과 보호(Assert & Guard)

//Assert함수 : 단정함수, 검증함수
//Guard문 : guard let ~ else 구문

//assert문을 통해 단위테스트 및 검증의 용도로 사용함.
var myInt : Int = 10
// myInt가 10이면 통과, 아니면 통과 못하고 예외처리함.
assert( myInt == 10, "myInt가 10이 아님" )
//assert( myInt == 20, "myInt가 20이 아님" )

//assert문 : 조건식이 false면 통과, true면 오류!

func myFuncAssert(age: Int?) {
    assert( age != nil, "age가 nil임. 오류!")
    assert( !( age! <= 0 || age! > 120 ), "age가 정상범위가 아님. 오류!" )
    print( "입력된 나이는 \(age!)입니다.")
}
myFuncAssert(age: 30)
//myFuncAssert(age: nil)
//myFuncAssert(age: 130)

//  assert 상용 서비스에 쓰기보다는 개발시 테스트할 때 사용 추천

// guard let ~ else문을 통해 값을 검증
func myFuncGuard(age: Int?) {
    // tempAge가 nil이거나 tempAge 조건문이 false일 때, else 구문으로 간다. 이른 탈출!
    guard let tempAge = age, tempAge >= 0, tempAge < 120 else {
        print("age가 nil이거나 정상범위가 아닙니다.")
        return
    }
    print("입력된 나이는 \(age!)입니다.")
}

myFuncGuard(age: nil)
myFuncGuard(age: 130)
myFuncGuard(age: 40)
myFuncGuard(age: -30)
