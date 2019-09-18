import UIKit

//func compare(x:Int, y:Int) -> Bool {
//    return x < y
//}
//var sort1 = array.sorted(by: compare)

//
//var sort2 = array.sorted(by: {(x: Int, y:Int) -> Bool in return x > y})

//
//var sort3 = array.sorted{ (x: Int, y: Int) -> Bool in return x > y}

//
//var sort4 = array.sorted{x, y in x > y}

//
//var sort5 = array.sorted{$0 > $1}

//
//var sort6 = array.sorted(by: >)

func findPrim() -> [Int] {
    var  array = [2,3]
    var tag = 0
    for i in 4...10000 {
        for j in 2..<i {
            if i%j==0 {
              tag+=1
                break
            }
        }
        
        if tag==0 {
             array.append(i)
        }
        tag=0
    }
    return array
}

var result=findPrim()

var sort2 = result.sorted(by: {(x: Int, y:Int) -> Bool in return x > y})
print(sort2)

var sort3 = result.sorted{ (x: Int, y: Int) -> Bool in return x > y}
print(sort3)

var sort4 = result.sorted{x, y in x > y}
print(sort4)

var sort5 = result.sorted{$0 > $1}
print(sort5)

var sort6 = result.sorted(by: >)
print(sort6)
