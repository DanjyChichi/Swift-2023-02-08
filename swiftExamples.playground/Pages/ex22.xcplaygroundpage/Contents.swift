import Foundation

// ex22
// 구조체와 클래스에 대해서

//          구조체(struct) 클래스(class) 열거형(enum)
// 형식       값타입         참조타입       값타입
// 상속       불가           가능         불가
// 익스텐션    가능           가능         가능

// 스위프트애서는 구조체를 가장 선호함.
// UIKit에서는 주로 클래스로 설계됨. Obj-C, NS계열함수
// SwiftUI는 주로 구조체로 설계됨. Swift, nonNS계열함수.

// 구조체 : 첫문자는 대문자로 한다. 변수와 함수를 가진다.
struct Student {
    var name : String = "앙우"
    var age : Int = 24
    func printName() {
        print( self.name )
    }
}
// 구조체 타입의 변수 (객체, 인스턴스-메모리 생성됨)
var student : Student = Student()   // new 예약어 없음
dump( student )
student.name
student.age
student.printName()

// 구조체의 장점 : 값복사가 편하다.
// 클래스의 장점 : 상속이 가능하므로, 게층적인 설계가 가능하다.

// 구조체의 값 복사 메모리가 두개 생성 메모리 주소가 다름
let student2 = student
dump(student2)

// 클래스의 선언
class Person {
    var name : String = "김하현"
    var age : Int = 26
    func printName() {
        print( self.name )
    }
}
// 클래스 변수 생성(객체, 인스턴스)
var person: Person = Person()   // new 없음
dump(person)
person.name
person.age
person.printName()

// 클래스의 생성자 함수
// init() : 생성자 : 생성자, 객체생성시 자동호출됨. 용도: 값 초기화
//        - 구조체에도 생성자 함수 있음.
// deinit() : 소멸자, 객체소멸시 자동호출됨. 용도: 값 해제
//        - 구조체에는 소멸자 없음.
//        - 소멸은 자동으로 시스템이 알아서 함.
class Man {
    var name: String
    var age: Int
    var nickName: String?
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    deinit {
        self.name = ""
        self.age = 0
    }
}
// 객체 생성
var man : Man = Man(name:"박미소", age: 26)
dump(man)
man.name
man.age
man.nickName = "메이짜오"
// 옵셔널 바인딩을 통해 안전한 nil 처리
if let nickName = man.nickName {
    print("nickName은 nil이 아님. \(nickName)")
}

// 클래스의 상속
// 부모 클래스(상위 클래스)의 기능(변수, 함수)를 자녀 클래스(하위 클래스)에서 상속(소유)한다.
class Parent {
    var name = "부모 클래스"
    func printName(){
        print(self.name)
    }
}

// 콜론 연산자를 사용한다.
class Child : Parent {
    
}
var child : Child = Child()
child.name
child.printName()

// 클래스의 멤버 변수(프로퍼티 Property)에 get, set 함수
class People {
    var name: String = "박앙우"
    var korAge = 24
    var engAge:Int {
        get {   // 변수값을 읽을 때 자동호출 됨.
            print("get 자동호출 됨.")
            return korAge - 1;
        }
        set(inputValue) {   // 변수값을 쓸 때 자동호출 됨.
            print("set 자동호출 됨.")
            korAge = inputValue - 1;
        }
    }
}
var people : People = People()
people.korAge
print(people.engAge)    // get 자동호출 됨.
people.engAge = 30
people.korAge

// get, set의 감시자 함수
struct Hero {
    var name: String = "앙우맨"
    var age: Int = 24 {
        // 감시자 함수
        willSet(newAge) {   //  값 설정 전에 호출 됨.
            print("이전 나이:", age)
            print("새 나이:", newAge)
            if newAge <= 0 || newAge > 120 {
                print("잘못된 나이값!")
            }
            didSet(oldAge) {    //  값 설정 후에 호출 됨.
                print("이전 나이:", oldAge)
                print("새 나이:", age)
            }
        }
    }
}
var hero = Hero()
hero.age = 40
hero.age = 200
    
    
