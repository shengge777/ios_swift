import UIKit

var array = [2,1,5,4,6,3,0,8,7]

//
func compare(x:Int, y:Int) -> Bool {
    return x < y
}
var sort1 = array.sorted(by: compare)

//
var sort2 = array.sorted(by: {(x: Int, y:Int) -> Bool in return x > y})

//
var sort3 = array.sorted{ (x: Int, y: Int) -> Bool in return x > y}

//
var sort4 = array.sorted{x, y in x > y}

//
var sort5 = array.sorted{$0 > $1}

//
var sort6 = array.sorted(by: >)

//7.自己实现冒泡
//func sorted<T>(arr:[T], compare:(T,T) -> Bool) -> [T] {
//    var arr =arr
//    for i in 0..<arr.count {
//        for j in (i+1..<arr.count)
//    }
//}




