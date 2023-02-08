import Foundation

//ex 08
//조건문 if문(80%) switch문(20% - 비교대상이 정수형)
// : 선택적인 수행이 가능하도록 한다.
// if 조건식(비교, 논리 연산자) {
//  참일 때 수행하는 수행문
// }
if true {
    print("참입니다.")
}
if false {
    print("참입니다2.")
}
print("여기입니다.")
//if문의 4가지 형식
//1. 단일 if문
//2. if else문
if false {
    print("참입니다3.")
} else {
    print("거짓입니다.")
}
//3. if else if문
if false {
    print("조건1이 찹입니다.")
} else if false {
    print("조건1이 거짓이고 조건2가 참입니다.")
} else {
    print("조건1과 조건2가 모두 거짓입니다.")
}
//4. 중첩 if문(if문 안에 if문)
if true {
    print("조건1이 참입니다.")
    if false {
        print("조건1이 참이고 조건2도 참입니다.")
        if true {
            print("조건1,2,3 모두 참입니다.")
        }
    } else {
        print("조건1이 참이고 조건2는 거짓입니다.")
    }
}

//단일 if문
let a = 10
let b = 20
if a < b {
    print("a가 b보다 작습니다.")
}
//if else문
if a > b {
    print("a가 b보다 큽니다.")
}else{
    print("a가 b와 같거나 작습니다.")
}
//if else if문
if a > b {
    print("a가 b보다 큽니다.")
} else if(a < b) {
    print("a가 b보다 작습니다.")
} else {
    print("a와 b가 같습니다.")
}
//중첩 if문
if a < 20 {
    //a <= 19
    if a > 15 {
        // 15 <= a <= 19
        print("a는 20보다 작고, 15보다 큽니다.")
    }else if a > 12{
        // 12 <= a <= 19
        print("a는 20보다 작고, 12보다 큽니다.")
    }else {
        print("a는 12이하이다.")
    }
}
//연습문제 2
//i변수에 100을 담고, j변수에 20을 담고,
//1. i변수가 10의 배수인가를 true/false로 출력하시오.
//2. i / j 연산할 때 10과 같은지 true/false로 출력하시오.
//3. i와 j를 비교해서 큰 수를 출력하시오.

var i, j : Int
i = 100
j = 20
//1번
if i % 10 == 0 {
    print("i는 10의 배수이다.")
} else {
    print("i는 10의 배수가 아니다.")
}
//2번
if i / j == 10 {
    print("10과 같다.")
} else {
    print("10과 같지않다.")
}
//3번
if i > j {
    print("i가 j보다 크다. i:\(i)")
} else if i < j {
    print("j가 i보다 크다. j:\(j)")
} else {
    print("i와 j가 같다. i:\(i) j:\(j)")
}










