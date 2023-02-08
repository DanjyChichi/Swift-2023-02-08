import Foundation

/// ex17
/// 클로저 Closer

/// 클로저란? 일종의 코드 블럭(뭉치)
/// 기존의 함수도 코드 블럭이다.
/// 함수 사용법
/// 1. 이전에 변수에 값을 넣어서 함수의 매개변수로 값을 전달했다.
/// 2. 코드블럭을 변수로 만들어서 함수의 매개변수로 코드를 전달한다.
/// 비동기 처리 : 예) 통신 - HTTP 통신에서 요청과 응답의 시점이 다름. 요청하는 코드와 응답받고 처리할 코드를 함께 기술해 놓으면 매우 편리하다.

/// 프로그래밍 언어의 세대별 특징
/// 1. 절차적 언어 : C, Basic, Fortran, Cobol, 어셈블리어
/// 2. 객체지향 언어 : Java, C#, C++, Objective-C
/// 3. 함수형 언어: JS, Swift, Kortlin, GO, Dart

/// 클로저(코드 블럭, 함수형 변수, 익명함수)를 만드는 형식
/// { (매개변수이름: 타입) -> 반환형 in
///     수행할 코드
/// }

/// 일반함수
func add(a:Int, b:Int) -> Int{
    return a + b;
}
var result = add( a: 10, b :20 )

/// 일반변수
var myVar : Int = 10

/// 클로저 선언 = 코드블럭을 변수 형태로 담은 것 : 함수형 변수 (타입이 함수)
var sum : (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}

/// 클로저 실행
result = sum( 10, 20 );

/// 클로저를 만드는 이유 : 코드블럭을 변수로 만들어서 매개변수로 전달하기 쉽다.

// 클로저를 일반함수의 매개변수로 전달해보자.
func calc(a: Int, b: Int, method:(Int, Int)->Int) -> Int {
    return method(a, b);
}

result = calc( a: 20, b: 5, method: sum )

// 일반함수를 클로저함수(변수)로 만드는 법
func printName(name1: String, name2: String) ->
Void {
    print("name1:\(name1), name2:\(name2)")
}
printName(name1: "박앙우", name2:"김효니")

var myCloser: (String, String) -> Void =
printName(name1:name2:)
myCloser("홍길동", "사임당")


/// 연습문제 7
/// 사칙연산을 수행하는 4개의 클로저변수(함수)를  만들고
/// 일반함수에 전달하여, 각각 사칙연산을 수행하도록 하자.

/// 더하기 클로저 : add
/// 빼기 클로저 : sub
/// 곱하기 클로저 : mul
/// 나누기 클로저 : div
/// 매개변수는 정수형 2개, 반환형은 Double 1개

var add : (Int, Int) -> Double = {
    (a: Int, b: Int) -> Double in
    return Double(a + b)
}
var sub : (Int, Int) -> Double = {
    (a: Int, b: Int) -> Double in
    return Double(a - b)
}
var mul : (Int, Int) -> Double = {
    (a: Int, b: Int) -> Double in
    return Double(a * b)
}
var div : (Int, Int) -> Double = {
    (a: Int, b: Int) -> Double in
    return Double(a / b)
}

// 일반함수
func calc(a:Int, b:Int, opMethod: (Int, Int) -> Double) -> Double {
    opMethod(a, b);
}

//result = calc( a: 10, b: 3, opMethod: add )
//result = calc( a: 10, b: 3, opMethod: sub )
//result = calc( a: 10, b: 3, opMethod: mul )
//result = calc( a: 10, b: 3, opMethod: div )





