import UIKit

//연산자 Operator

//연산자 우선 순위 : 산술 > 비교 > 논리 > 대입
var result = 10 + 2 - 8 / 4 * 2;

//헷갈리면 소괄호로 묶어서 처리하면 된다. 다 외울 필요 x.
result = (10 + 2) - (8 / 4) * 2;

//산비논대 : 산성비가 논에 온대 ;;; 아저씨...?
//단항 : 연산자 우선순위 높음
//      -(부호연산자) !(논리반전) (옵셔널변수)!
//산술 : + = * /(몫) %(나머지) : 연산결과가 값으로 나옴
//비교 : ==(같은가) !=(같지않은가) <(작은가) >(큰가) <=(같거나 작은거) >=(같거나 큰가) : 연산결과는 true/false로 나옴
//논리 : &&(AND 논리연산) ||(OR 논리연산) !(NOT 논리반전) : 연산결과가 true/false로 나옴
//삼항 : ? : 연산자 - 연산결과가 값으로 나옴
//대입 : 우선순위 낮음, = 복합대입연산자( += == *= /= %= )

//단항 연산자 : 연산의 대상이 1개인 연산자
//이항 연산자 : 연산의 대상이 2개인 연산자, 산비논대
//삼항 연산자 : 연산의 대상이 3개인 연산자,

//단항 연산자
//증감 연산자 ++ ==가 사라짐, 이유는 초보자가 볼 때 이해가 어렵다.
var myInt = 10
// myInt++ , ++myint (사용할 수 없음)
myInt = myInt + 1
myInt += 1
//논리 반전 연산자 !
var myBool = true
!myBool
!(!myBool)
var myNullable : Int? = 10
print(myNullable)
// ! 강제 언래핑 연산자
print(myNullable!)

//산술 연산자
print( 10 + 3 )
print( 10 - 3 )
print( 10 * 3 )
print( 10 / 3 ) // 나누기 연산의 몫을 반환
print( 10 % 3 ) // 나누기 연산의 나머지를 반환

// 정수와 실수를 연산하면 결과는 실수로 나온다.
// 정수와 정수를 연산하면 결과는 정수로 나온다.
print( 10 / 3.0 )

//비교 연산자 : true/false로 나온다.
var myInt2 = 10
var myInt3 = 20
print( myInt2 == myInt3 )
print( myInt2 != myInt3 )
print( myInt2 > myInt3 )
print( myInt2 < myInt3 )
print( myInt2 >= myInt3 )
print( myInt2 <= myInt3 )

