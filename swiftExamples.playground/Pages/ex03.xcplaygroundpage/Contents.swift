import UIKit

//출력문 print
var myStr : String = "Swift Programming"

//print함수 : 콘솔(입출력)화면에 문자열을 출력한다.
//         : 줄바꿈(개행)이 들어가 있음.
//         : 자바, 코틀린(println와 가틍ㅁ)
print("Swift Coding")
print( myStr)
debugPrint( myStr )
dump( myStr )

//클래스 선언
class Student {
    var name = "홍길동"
}
//클래스 객체 생성
var student = Student()
print( student )
print( student.name )
print( "---" )
debugPrint( student ) // debugPrint 와 dump는 객체의 부가적인 정보를 볼 수 있는 함수
dump( student )

//문자열 보간 : 문자열끼리 연결하기
var age = 30
//자바, 자바스키립트는 +로 문자열 연결
//print( "저의 나이는"+age+"입니다." )
print( "저의 나이는 \(age)입니다.")
print( "저의 나이는",age,"입니다." ) // 공백이 자동으로 들어감

