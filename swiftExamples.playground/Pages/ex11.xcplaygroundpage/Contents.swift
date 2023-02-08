import Foundation

//ex11
//반복문 for문 while문 repeat while문
//사용빈도 60%  30%     10%
//반복문 : 반복적인 수행을 가능하게 하는 문장

//for문
// 자바 : for(초기화; 조건식; 증감문){ 실행문 }
// 스위프트 : 파이썬처럼 범위연산자를 이용하여 구현

// 형식
// for 반복변수 in 범위 {
//  실행문
// }

// 1부터 10까지 출력
for i:Int in 1...10 {
    print(i)
}

// 1부터 9까지 출력
for i in 1..<10 {
    print(i)
}
print("") // 콘솔 줄바꿈

// 1부터 100까지 2씩 증가하여 출력
for i in stride(from: 1, to: 100, by: 2){
    print(i)
}

// 연습문제4
// 1. 20부터 30까지 1씩 증가하는 반복문을 만들고 20부터 30까지 출력하시오.

for i in 20...30{
    print(i)
}

// 2. 10부터 -10까지 -1씩 감소하는 반복문을 만들고 10부터 -10까지 출력하시오.

for i in stride(from: 10, to: -11, by: -1){
    print(i)
}

// 3. 1부터 100까지 3씩 증가하는 반복문을 만들고, 반복변수 i값을 출력하시오.

for i in stride(from: 1, to: 101, by: 3){
    print(i)
}

// 4. 1부터 100까지 수 중에서 3의 배수만 출력하시오.

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}

// 5. 1부터 100까지 수 중에서 끝자리가 3, 6, 9인 수만 출력하시오.


for i in 1...100 {
    let j = i % 10
    switch j{
    case 3:
        print(i)
    case 6:
        print(i)
    case 9:
        print(i)
    default:
        break
    }
}


for i in 1...100 {
    if i % 10 == 3 || i % 10 == 6 || i % 10 == 9{
        print(i)
    }
}

