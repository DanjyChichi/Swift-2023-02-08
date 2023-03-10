import Foundation

/// ex 15
/// 함수 function
/// 함수를 사용하는 이유
/// 1. 코드를 기능별로 분리하고,
/// 2. 코드에 이름(함수 이름)을 붙여놓을 수 있다.
/// 3. 코드를 재사용(호출)하고, 코드 중복을 피할 수 있다.

/// 형식
/// func 함수이름( 매개변수이름: 타입 ) -> 반환타입 {
/// 실행문들...
/// }


func myFunc() {
    print("myFunc() 호출됨.")
}
myFunc() // 호출하면 그때서야 코드가 수행됨.

/// 함수의 4가지 패턴 (형식)
/// 1. 매개변수 X, 반환형 X
func myFunc1() -> Void {
    print("myFunc1() 호출됨.")
    return // 함수의 종료를 의미함.
}
myFunc1()
/// 2. 매개변수 O, 반환형 X
func myFunc2( name: String ) -> Void {
    print("myFunc2() 호출됨.")
    print("매개변수:\(name)")
}
myFunc2(name:"홍길동")
func myFunc3(_ name: String) -> Void {
    print("myFunc3() 호출됨.")
    print("매개변수:\(name)")
}
myFunc3("사임당")
/// 3. 매개변수 X, 반환형 O
func myFunc4( ) -> Int {
    print("myFunc4() 호출됨.")
    return 10
}
let result = myFunc4()
/// 4. 매개변수 O, 반환형 O
func myFunc5(_ name:String) -> String{
    print("myFunc5() 호출됨.")
    return name + "!!";
}
let result2 = myFunc5( "김진사" )

/// 함수의 고급기법
/// 매개변수를 여러개 넣을 때
func printName(name1:String, name2:String){
    print("name1:\(name1), name2:\(name2)")
}
printName(name1: "앙우", name2: "효니")

/// 매개변수에 기본값을 줄 수 있음.
func printName2(name1:String, name2:String="춘향이") {
    print("name1:\(name1), name2:\(name2)")
}
printName2(name1: "앙우")
printName2(name1: "기마현", name2: "오앙우")

/// 매개변수 별칭(별명 alise) 를 줄 수 있다.
/// 호출시 사용하는 이름과 내부적으로 사용하는 이름을 분리한다.
func printName3(hero name1:String, actorName name2:String){
    print("name1:\(name1), name2:\(name2)")
}
printName3(hero: "아바타", actorName: "카메론")


/// 가변 매개변수 - 매개변수가 여러 개일 때 배열로 입력시킨다.
func printName4(name1: String, name2: String...){
    print("name1:\(name1), name2:\(name2)")
    for name in name2 {
        print( name )
    }
}
printName4(name1: "오앙우", name2: "김횬이","단지","치치")
