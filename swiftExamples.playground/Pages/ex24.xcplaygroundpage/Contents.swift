import Foundation

/// ex24
/// 프로토콜 Protocol
///         : 가상함수의 목록 선언   예) 자바: 인터페이스
/// 가상함수 : 함수의 선언만 있고, 코드 본체가 없는 것

/// 클래스와 프로토콜( 인터페이스 )와의 차이점
/// 1. 클래스는 상속이 한 개만 가능,
/// 2. 프로토콜은 다중상속-한 번에 여러개 상속이 가능

/// 프로토콜과 자바의 인터페이스와의 차이점
/// 1. 프로토콜은 변수+가상함수 선언이 가능
/// 2. 인터페이스는 가상함수만 선언 가능
///
/// 프로토콜 선언
protocol Talkable {
    // 변수-프로퍼티 선언
    var lang: String { get }    //  읽기 속성만 존재
    var topic: String { get set }   //  읽기/쓰기 속성 존재
    // 가상함수 선언
    func talk()
}
protocol Runnable {
    // 가상함수 선언
    func run();
}
// 구조체에서 프로토콜 구현(준수)
struct Person : Talkable, Runnable {
    // 프로퍼티 준수
    var lang: String
    var topic: String
    // 가상함수 준수 : 재정의
    func talk() {
        print("talk!")
    }
    func run() {
        print("run!")
    }
}
let person = Person(lang:"영어", topic:"시사다큐")
person.talk()
person.run()

// 클래스에서는 다중 상속이 안됨 : 다단계 상속
class ClassA {
}
class ClassB : ClassA {
}
class ClassC : ClassB {
}
// 다중 상속은 안됨.
// class ClassD : ClassA, ClassB, ClassC {
// }

// 프로토콜은 설계. Struct는 구현.

// 클래스의 함수 오버로딩 :  함수의 매개변수의 타입과 갯수를 다르게 함으로 같은 이름의 함수를 사용하도록 확장하는 것
// 클래스의 함수 오버라이딩 : 부모 클래스의 함수를 자식 클래스에서 재정의하는 것(부모 클래스의 함수는 무시됨)
// 취업 때 단골 면접 질문!!
class ParentClass  {
    func printName(name: String) {
        print( "parent : ", name );
    }
    func printName(name: String, age: Int){
        print( "parent : ", name, ":", age )
    }
}
var parent = ParentClass()
parent.printName(name: "홍길동")
parent.printName(name: "홍길동", age: 30)
class ChildClass : ParentClass {
    // 오버라이딩
    override func printName(name: String){
        print("child : ", name)
    }
}
var child = ChildClass()
child.printName(name: "박앙우")
