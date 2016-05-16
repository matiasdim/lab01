//: Playground - noun: a place where people can play

/*
 * Author: Matias Gil
 */

import UIKit

// **Problem #1
//*
let myString = "hello"
//*
var cost = 3.14
//*
let cnt :Int = 2
//*
var shouldWe :Bool; shouldWe = true
//*
let hex11 :Int = 0xB
//*
let binary10 :Int = 0b1010

// Problem #2

// **Problem #3
//*
var array: [String] = ["queen","worker","drone"]
//*
print(array[0])
//*
array.append("honey")
//*
array +=  ["are","us"]

// **Problem #4
for item in array{
    print(item)
}
    //C-style
for (var i = 0; i < array.count; i++){
    print("\(i) : \(array[i])")
}

// **Problem #5
var authorsScores: Dictionary<String,Double> = ["Mark Twain" : 8.9,"Nathaniel Hawthorne" : 5.1,"John Steinbeck" : 2.3,"C.S. Lewis" : 9.9,"Jon Krakaur" : 6.1]

// **Problem #6
//*
print(authorsScores["John Steinbeck"])
//*
authorsScores["Erik Larson"] = 9.2
//*
print(authorsScores["Jon Krakaur"] > authorsScores["Mark Twain"] ? "Jon Krakaur" : "Mark Twain")

// **Problem #7
for (key, value) in authorsScores{
    print("\(key):\(value)")
}

// **Problem #8
for index in 1...10{
    print(String(index))
}
// **Problem #9

for(var i = 10; i >= 1; i--){
    print(String(i))
}
// Problem #10

// Problem #11
var count = 0
while(count <= 5){
    
    count += 1
}
// Problem #12

// **Problem #13
var num :Int = 1
switch num{
case 0:
    print("none")
case 1...3:
    print("a few")
case 4...9:
    print("several")
case 10...99:
    print("tens of")
case 100...999:
    print("hundreds of")
case 1000...999999:
    print("thousands of")
default:
    print("millions of")
}

// **Problem #14
func verbalizeNumber(num: Int) -> String{
    var description :String
    switch num{
    case 0:
        description = "none"
    case 1...3:
        description = "a few"
    case 4...9:
        description = "several"
    case 10...99:
        description = "tens of"
    case 100...999:
        description = "hundreds of"
    case 1000...999999:
        description = "thousands of"
    default:
        description = "millions of"
    }
    return description
}

// Problem #15


// Problem #16

// Problem #17

// Problem #18

// Problem #19

// Problem #20
