class MyClass1 {
    var name = "홍길동"
}
class MyClass2 {
    var age = 30
}
var myAnyObject : AnyObject = MyClass1()
myAnyObject = MyClass2()

var a = myAnyObject

print(a.name)
