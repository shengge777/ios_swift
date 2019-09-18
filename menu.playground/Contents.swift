import Cocoa

enum Gender: Int {
    case male=0, female
}

class Person:Equatable,CustomStringConvertible {
    var description: String {
        return "name:\(name),gender:\(gender)"
    }
    var name: String
    var gender: Gender
    var fullName: String {
        return "little \(name)"
    }
    init(name:String,gender:Gender){ //构造函数Init
        self.name = name
        self.gender = gender
    }
    static func == (lhs:Person,rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.gender == rhs.gender
    }
}

let p1 = Person(name: "lili",gender: .male)
let p2 = Person(name: "lala",gender: .female)

p1 === p2
print(p1)

class Student: Person {
    
}

class Teacher: Person {
    
}

let s1 = Student(name: "yqh", gender: .male)
let t1 = Teacher(name: "tb", gender: .female)
let t2 = Teacher(name: "fxk", gender: .female)

var persons = [p1,p2,s1,t1,t2]
var dict = ["person":0,"student":0,"teacher":0]

for p in persons {
    if p is Person {
        if let num = dict["person"] {
            dict["person"] = num + 1
        }
    }
    if p is Student {
        if let num = dict["student"] {
            dict["student"] = num + 1
        }
    }
    if p is Teacher {
        if let num = dict["teacher"] {
            dict["teacher"] = num + 1
        }
    }
    
}
print(dict)

var sorted = persons.sorted { (p1, p2) -> Bool in
    if p1.gender.rawValue < p2.gender.rawValue {
        return true
    }else if p1.name > p2.name && p1.gender == p2.gender{
        return true
    }
    
    return false
}
print(sorted)


var weather = ["weather":["cities":[["name":"chengdu","temp":30],["name":"chongqing","temp":40]]]]



//func temperature() {
//    guard let w = weather["weather"] else {
 //       return
 //   }
  //  guard let cities = weather["cities"] else {
//        return
//    }
//    let chongqing = cities[1]
//    guard let temp
//}



var arr = [3,8,2,6,4,3,2,1]

print(arr.filter { $0 % 2 == 1})
print(arr.map {$0 * 2})
print(arr.map { "\($0)"})
print(arr.reduce(0){ $0+$1})
print(arr.reduce((0,9999,0)){ (result, x) -> (sum:Int,min:Int,max:Int) in
    var (sum,min,max) = result
    sum = sum + x
    if x < min {
        min = x
    }
    if x > max {
        max = x
    }
    return (sum,min,max)
})

var sum = 0
var min = 9999
var max = 0
for x in arr {
    sum = sum + x
    if x < min {
        min = x
    }
    if x > max {
        max = x
    }
}
print(sum,min,max)


var dict1 = [["name":"lgy","age":44],["name":"yqh","age":45]]

extension Int {
   // func sqrt() -> Double {
        
   // }
    func db() -> Int {
        return self * self
    }
}
