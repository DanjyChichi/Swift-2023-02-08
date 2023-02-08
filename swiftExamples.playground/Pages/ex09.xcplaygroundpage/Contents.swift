import Foundation
import UIKit
// Command + Click 하면 Definition 볼 수 있음.

//ex09
// switch문      if else 와 같다. 다만 정확한 정수값과 비교한다는 점이 차이인듯?
// 형식
// switcg 정수형변수 {
//  case 정수값:
//      실행문1
//  case 정수값:
//      실행문2
//  default:
//      실행문3
// }
var i = 10
switch i {
case 10:
    print("10입니다.")
case 20:
    print("20입니다.")
default:
    print("그 외의 수입니다.")
}

//Swift에서 랜덤값(임의의 수)를 발생시키는 방법
//0~99까지의 임의의 정수를 반환함.
let randomUInt32: UInt32 =
    arc4random_uniform(100)
//UInt32를 Int로 형변환하기
let randomInt = Int(randomUInt32)
randomInt is Int

//연습문제3 - DM으로 제출해주세요~
//60부터 100까지의 임의의 정수를 발생시키고,
//switch문을 이용하여 아래와 깉이 출력하시오.
//  60점대 : 60~68점이면 "60점대입니다." 출력하시오.
//  70점대 :
//  80
//  90
//  100 : "만점입니다!"

let scoreUInt32 : UInt32 =
arc4random_uniform(41)+60
let scoreInt = Int(scoreUInt32)
let score = scoreInt / 10

switch score {
case 6:
    print("60점대입니다.")
case 7:
    print("70점대입니다.")
case 8:
    print("80점대입니다.")
case 9:
    print("90점대입니다.")
default:
    print("만점입니다.")
}
