import Foundation

/// 콜렉션 Collection (모음 - 라이브러리)
/// 1. 리스트 - List (배열 + 리스트)        자바: ArrayList,int[]
///       -> 배열 : 같은 타입의 데이터를 순차적으로 나열해 놓은 구조
///       -> 리스트 : 순차적인 데이터 구조인데, 추가 / 삭제가 편리하다.
/// 2. 딕셔너리 - Dictionary (키 - 값)        자바: Map
/// 3. 집합 - Set (집합: 중복 허용 안함)     자바: Set

/// 배열  Array : 리스트의 기능도 가지고 있음.
/// 배열의 선언방법
var myArray1 : Array<Int> = Array<Int>()    // 타입 명시
var myArray2 : Array<Int> = []              //  타입 명시
var myArray3 : [Int] = []                   //  타입 명시
var myArray4 = Array<Int>()                 //  타입 추정
var myArray5 = [Int]()                      //  타입 추정

/// 정수형 1차 배열
var myArray6 : [Int] = [10, 20, 30]
myArray6.append(40)
myArray6.append(50)
myArray6.append(60)
print( myArray6 )
dump( myArray6 )

/// 포함하고 있는가?
myArray6.contains(20)
/// 배열 갯수
myArray6.count
/// 삭제하기
myArray6.remove(at: 0)   //첫번째 삭제
myArray6
myArray6.removeFirst()
myArray6
myArray6.removeAll()
myArray6

/// 중간에 추가
myArray6.insert(100, at:0)
myArray6.insert(200, at:0)

/// 배열이 비어있는가?
myArray6.isEmpty

/// 배열의 순환
for num in myArray6{
    print(num)
}


/// 연습문제7
/// 1. 문자열 제어하기
/// myString에서 "Swift" 문자열만 출력하시오.
///
var myString = "Swift Programming!"
let arrayStr : [Substring] = myString.split(separator:" ")
print(arrayStr[0])

/// 2, 문자열 치환하기
/// "Swift"를 "iOS"로 치환하여 출력하시오.
///                        교체전 교체후
/// 문자열 변수.replacingOccurences(of:, with:) 함수이용

myString.replacingOccurrences(of: "Swift", with: "iOS")

/// 3. 함수 만들기
/// 정수 2개를 매개변수로 받는 sum이라는 함수를 선언하고, 정수 2개의 합을 반환값으로 반환하는 함수를 만드시오.
/// 호출 후 결과값을 출력하시오. 입력값( 10, 20)

func sum (num1: Int, num2: Int) -> Int{
    var result = num1 + num2
    print(result)
    return result
}
sum(num1: 10, num2: 20)
/// 4. 매개변수 3개를 받는 함수 avg을 만들고, 평균값을 반환하고 반환결과 값을 출력하시오. 입력값) 10, 20, 40

func avg (num1: Float, num2: Float, num3: Float) -> Float{
    var result = (num1 + num2 + num3) / 3
    print(result)
    return result
}
avg(num1: 10, num2: 20, num3: 40)
/// 5. 배열 다루기
var names : [String] = []
/// "tom"을 추가하고, "hana"를 추가하고, "joy"를 추가하고
names.append("tom")
names.append("hana")
names.append("joy")
/// 배열의 갯수를 출력하시오,
names.count
/// 배열의 요소 중에서 이름이 가장 긴 사람을 출력하시오.
var longestName : String = ""
for name in names {
    if name.count > longestName.count {
        longestName = name
    }
}
print(longestName)
/// 모든 요소를 쉼표로 연결하여 출력하시오. 예) "tom,hana,joy"
print("\(names[0]),\(names[1]),\(names[2])")
/// tom 이름 뒤에, tomas를 추가하고, joy를 제거하시오.
names.insert("tomas", at:1)
names.remove(at: 3)
print(names)


