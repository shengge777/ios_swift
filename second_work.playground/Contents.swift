import Cocoa

enum Gender: Int {
    case male=0, female
}
class Person:Equatable,CustomStringConvertible {
    var description: String {
        return "name:\(firstname+lastname),age:\(age),gender:\(gender)"
    }
    
    var firstname: String
    var lastname: String
    var age: Int
    var gender: Gender
    
    init(firstname:String,lastname:String,age:Int,gender: Gender ) {
            self.firstname = firstname
            self.lastname = lastname
            self.age = age
            self.gender = gender
        }
    func fullName() -> String {
        return "little \(lastname)"
    }
    static func == (lhs: Person,rhs: Person) -> Bool {
        return lhs.firstname == rhs.firstname &&  lhs.lastname == rhs.lastname && lhs.age == rhs.age && lhs.gender == rhs.gender
    }
    static func != (lhs: Person,rhs: Person) -> Bool {
        return lhs.firstname != rhs.firstname ||  lhs.lastname != rhs.lastname || lhs.age != rhs.age || lhs.gender != rhs.gender
    }
    
}

let p1 = Person(firstname: "qinghong", lastname: "yu", age: 19, gender: .male)
let p2 = Person(firstname: "ming", lastname: "tang", age: 21, gender: .female)
let p3 = Person(firstname: "qinghong", lastname: "yu", age: 19, gender: .male)
p1 == p2
p1 != p2
p1 == p3
print(p1)
print(p2)
print(p3)

class Student:Person {
   override var description: String {
    return "name:\(firstname+lastname),age:\(age),gender:\(gender),stuNo:\(stuNo)"
    }
    var stuNo: Int
    init(firstname1: String, lastname1: String, age1: Int, gender1: Gender,stuNo1: Int) {
        firstname = firstname1
        lastname = lastname1
        age = age1
        gender = gender1
        stuNo = stuNo1
    }
    
}
let s1 = Student(firstname1: "fang", lastname1: "li", age1: 19, gender1: .male,stuNo1: 1)

class Teacher:Person {
    override var description: String {
        return "name:\(firstname+lastname),age:\(age),gender:\(gender),title:\(title)"
    }
    var title: String
    init(firstname: String, lastname: String, age: Int, gender: Gender,title: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.gender = gender
        self.title = title
    }
    
}
