//: Playground - noun: a place where people can play

/*
 * Author: Matias Gil
 */

import UIKit

// Problem #1
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
var calculation :Double = 2.3 * 5
"Multiplication between 2.3 and 5 is \(calculation)"

// Problem #3
//*
var array: [String] = ["queen","worker","drone"]
//*
print(array[0])
//*
array.append("honey")
//*
array +=  ["are","us"]

// Problem #4
for item in array{
    print(item)
}
    //C-style
for (var i = 0; i < array.count; i++){
    print("\(i) : \(array[i])")
}

// Problem #5
var authorsScores: Dictionary<String,Double> = ["Mark Twain" : 8.9,"Nathaniel Hawthorne" : 5.1,"John Steinbeck" : 2.3,"C.S. Lewis" : 9.9,"Jon Krakaur" : 6.1]

// Problem #6
//*
print(authorsScores["John Steinbeck"])
//*
authorsScores["Erik Larson"] = 9.2
//*
print(authorsScores["Jon Krakaur"] > authorsScores["Mark Twain"] ? "Jon Krakaur" : "Mark Twain")

// Problem #7
for (key, value) in authorsScores{
    print("\(key):\(value)")
}

// Problem #8
for index in 1...10{
    print(String(index))
}
// Problem #9

for(var i = 10; i >= 1; i--){
    print(String(i))
}

// Problem #10
var x = 3
var y = 2
var result = 0
for _ in 1...x{
    result += y*x
}

// Problem #11 - note that dictionary has the item added on problem 6
var counter = 0
var sum :Double = 0
while (counter < authorsScores.count) {
    sum += authorsScores[Array(authorsScores.keys)[counter]]!
    counter += 1
}
var average = sum / Double(authorsScores.count)
print("average: \(average))")

// Problem #12
if(average < 5){
    print("Low")
}else if(5 <= average && average < 7){
    print("Moderate")
}else{
    print("High")
}

// Problem #13
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

// Problem #14
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
for(var index = 1; index <= 10000000; index++){
    print("The verbalized number is: \(verbalizeNumber(index))")
    index *= 10
}

// Problem #16
func verbalizeAndShoutNumber(num: Int) -> String{
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
    return description.uppercaseString
}

// Problem #17
func expressNumbersElegantly(iterations :Int,verbalizeFunc: (Int) -> String) -> String{
    var stringToReturn = ""
    for(var index = 1; index <= iterations; index++){
        stringToReturn += "The verbalized number is: \(verbalizeFunc(index)) \n"
        index *= 10
    }
    return stringToReturn
}
var myVar: (Int) -> String
myVar = verbalizeNumber
myVar(100)
expressNumbersElegantly(100, verbalizeFunc: myVar)

myVar = verbalizeAndShoutNumber
myVar(100)
expressNumbersElegantly(100, verbalizeFunc: myVar)

// Problem #18
func expressNumbersVeryElegantly(iterating iterations :Int, andVerbalizingWith verbalizeFunc: (Int) -> String) -> String{
    var stringToReturn = ""
    for(var index = 1; index <= iterations; index++){
        stringToReturn += "The verbalized number is: \(verbalizeFunc(index)) \n"
        index *= 10
    }
    return stringToReturn
}
//example of a classy call ;)
print(expressNumbersVeryElegantly(iterating: 100000, andVerbalizingWith: myVar))

// Problem #19
// I found that .capitalizedString changes to upper case first letter of every single word on the string, and because of it I noticed that "famousLastWords.map{"\($0.capitalizedString)"}" don't meet with the requirement of "capitalize the first letter of each entry in the array" so for changing only the first letter of all the string I use an approximation I found here https://stackoverflow.com/questions/27082587/capitalizing-first-char-of-sentence-swift/36007807#36007807

var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets nuc 'em Joe!", "ah, there is just something about Swift"]
var newFamousLastWords = famousLastWords.map { "\(String($0.characters.first!).capitalizedString + String($0.characters.dropFirst()))" }
famousLastWords.map{"\($0.capitalizedString)"}

// Problem #20
/* Given a dictionary with name of players and his overall skills, this code sort the players based on their skills and create automatically two teams following the next logic:
 *
 * Best player go for  TeamA, second best player for the theamB, third best player for the teamA, fourth best player for the teamB, etc...
 *
 * Also the team names are defined initially. Finally it returns two arrays, both having in the first position the team names and in the other positions the names of the players after being sorted
 */
let playersNames: Dictionary<String,Int> = ["Apu" : 90, "Homer" : 87, "Carl" : 81,"Lenny" : 80,"Bart" : 92,"Milhouse" : 78,"Moe" : 85,"Flanders" : 90,"Barney" : 67,"Nelson" : 84]

let teamNames = (teamAname: "Blues", teamBName: "Reds")

// useful constant with closure to define the parameter of the sort
let byScore = {
    (item:(key: String, val: Int), item2:(key: String, val: Int))->Bool in
    if item.val < item2.val {
        return true
    } else {
        return false
    }
}

func mixTeams(withPlayers players :Dictionary<String,Int>, andTeamNames teamNames :(teamAName: String, teamBName: String)) -> ([String],[String])
{
    
    let orderedPlayers = playersNames.sort(byScore)
    var teamA: [String] = [teamNames.0]
    var teamB: [String] = [teamNames.1]
    var counter = 1
    
    for (key,_) in orderedPlayers{
        if counter % 2 == 0{
            teamA.append(key)
        }else{
            teamB.append(key)
        }
        counter += 1
    }
    return (teamA,teamB)
}
let theTeams: ([String], [String]) = mixTeams(withPlayers: playersNames, andTeamNames: ("Reds", "Blues"))

print(theTeams.0)
print(theTeams.1)







