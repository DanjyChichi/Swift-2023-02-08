import Foundation


//범위 연산자 : 반복문 배열 switch문 등에 사용

//1. 닫힌 범위연산자
let range1 = 1...5  //  1이상 5이하 1 2 3 4 5
//2. 반닫힌 범위연산자
let range2 = 1..<5  //  1이상 5미만 1 2 3 4
//3. 단방향 범위연산자
let range3 = 1...   //  1부터 배열의 길이만큼
let range4 = ...5   //  0부터 5까지
//4. 범위확인 연산자 ~=
let range5 = 1..<5
range5 ~= 0 //  0이 range5에 있는가?
range5 ~= 1 //  1이
range5 ~= 5 //  5가
type(of:range5)
//정수형 배열
//       인덱스0,  1,  2,  3,  4
let array = [10, 20, 30, 40, 50]
print(array[2...])
print(array[...2])
