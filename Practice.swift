//
//  main.swift
//  practice
//
//  Created by Maham Shamail on 20/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
//MARK: variables, strings, control flow (if for), in/out put

// System.out.println(..)
print("Hello, World!")
print("Peter Smith")


// constant vs variable
// let keyword = non-mutable
let pi = 3.14
//pi = 1234.5

// var keyword = mutable
var abc = 5
abc = 6
print(abc)

//Create two variables called x and y
// x stores the value 6
// y stores the value 10
// Write a program to add x and y and
// store the result in z
// Output z to the screen
//let x = 6
//let y = 10
//let result = x+y
//print(result)
//
//// this is okay as well
//var a = 6
//var b = 10
//var result2 = a+b
//print(result2)

// ======


// Variables have types
// And you cannot change the type
//
//var x = 6           // integer
//x = 7.6
//x = "Alex"
//
//// Swift knows the data type even though
//// you didn't specify it in your variable declaration
//
//// TYPE INFERENCE (implicit variable declaration)
//
//// if you do not specifiy the variable type, swift will GUESS
//// y = Int
//// y = 10.2            //
//
//// swift guessing wrong
//var mortgageRate = 4
//mortgageRate = 1.4
//
//
//// you can explicitily define the variable type
//// explicit variable declaration
//var salesTaxRate:Double = 13
//salesTaxRate = 10.3

//let x:Int  = 5
//let y:Double = 5.0
//let z:String = "Peter"
//let m:Character = "P"
////let p:Person = Person()

//
//// For today, you must give your variable a value
//// For Thursday, you don't have to give a value
//
//// Swift does NOT make assumptions about
//// what the default value of your variable is
//
//// 1. create a variable called abc2, but do not assign it a value
//let abc2:Int
//// 2. go and print the value of abc2
//print(abc2)
//
//// Forces you to be way more intentional about your programming
//// Forces you to really THINK about your pgoramming and why you're writing the code
//// Doing because you can
//// Doing because you have a good reason to
//
//var abc3:Double
//print(abc3)
//
//let abc4:String
//print(abc4)
//// thrusday
////var abc4:Int?
////print(abc4)



print(5 + 2 * 3 / 4) // (5 + 6 / 4 )
print(5 % 2)          // 1

// math and swift
let x:Int = 5
let y:Double = 5.0
// let result = x + y

//let result: Double = Double(x) + y
let result2:Int = x + Int(y)

//print("Double + Double: \( result )")
print("Int + Int: \(result2)")

// Casting --> converting one type to another type
// Double(x), String(x), Characater(x), Boolean(x)


let a = 5
let b = 10
print(a+b)

// include variables in your output - string interpolation
// variable substituion
print("Hello \(a)")
print("Hello \(a), Goodbye \(b), Hello \(a) again!")
print("Hello Math \(a+b)")

let firstName = "Abigail"
let lastName = "Smith"
print("\(firstName) \(lastName)")

let fullName = firstName + " " + lastName     // string concantenation
print("\(fullName)")


// input:
// Write a program that asks the user for their name and their favourite number
// Calculate the Square of that number (3 x 3 = 9)
// Output their name and the square of teh number to the screen
//print("Enter your name")
//let name = readLine()
//print("Hello \(name!), how are you?")
//print("What is your favorite number")
// let num:Int = readLine()

// let num:Int = Int(readLine()!)!
//// 1. readLine()! --> get keyboard input & Handle what hapens if its null
//// 2. Int(...)! --> try to cast the input to an int & handle what happens if the cast produces a null
//
//// 3. ! is not part of the casting
//// ! part of teh handling of what happens when you get null results
//
//// ! = PROMISE
//// ! = YOU ARE PROMISING SWIFT THAT IT WILL NEVER BE NULL
//
//
//// THE APP CRASHES
//
//print(num)
//
//readLine()! // ! is a cheaty/shortcut way of handling WHEN the rsult is null
//
//// result = whatever the user typed into the keyboard
//// readLine()!  -- if the user TYPES something into the keyboard, then readLIne == whatever the person typed in
//// readLine()! === if the user types NOTHING into the keyboard, then readlLIne will return a NULL  (!)
//
//
//Int()!      // ! is a cheaty, shortcut way of ahdnling when the result is null
//
//Int()           // by defin, a CAST will either return you the CASTED Value, or it will return you a NULL
//
//    // Cast will produce NULL IUF the cast fails
//    // Int(5.0) = 5
//    // Int(5.2222) = 5
//    // Int("5") = 5
//    // Int("sdfdsf") ==> ??????? ==> exception
//        //  --> Swift: null
//    // Int("sdfsdf") ==> NULL => UNDEFINED ==> I DON"T KNOW
//    // Java: ERROR
//
//
//
//
//let m = readLine
//
////let num = readLine()
////let value:Int = Int(num!)!
////print(value * value)
//
//// readLine returns a String
//// and you are trying to assign it to a int
//
//// NULL nil
//let i:String = "Peter"
//let j:String = nil          // NOT ALLOWED because you told swift, that J cannot accept null values
//
//// if you wnat a variable to be null, you have to tell swift that
//// it needs to change the data type to accept null values
//let k:String = "Peter"      // k is NOT allowed to be NULL
//let m:String? = nil         // m is ALLOWED to be NULL
//let n:String? = "Peter"
//
//
//
//
//
//










// variable mutable (variable) or non-mutable (constant)
//var x2 = true
//print("START: What is x? \(x2)")
//x2.toggle()
//print("MIDDLE: What is x? \(x2)")
//x2.toggle()
//print("END: What is x? \(x2)")

// x2 = !x2


let username = ""
let password = "1234"

if (password.isEmpty || username.isEmpty) {
    //print("FAILURE: You must enter your password")
    print("FAILURE: Username or password is empty!")
}
else if (username == "mando@gmail.com" && password == "this is the way"){
    print("SUCCESS: You are now logged in!")
    
}
else if (username == "mando@gmail.com" && password != "this is the way"){
    print("FAILURE: Wrong password!")
}
//&& LOGICAL AND
// || LOGICAL OR



// arrays

// Swift = all STRINGS are arrays of characters
// reversed() isEmpty count()
// array functions


// int[] nasa = {3,4, 5, 6}
// let nasa:[Int] = [3,4,5,6]





// i think they are NOT fixed size -- Arrays in Swift are like ArrayLists in Java

// loops
// C= style loop
// DOES NOT EXIST IN SWIFT
//for (var i = 0; i < 5; i++) {
//    print(i)
//}
// i = 0; i = 1, i = 2, i = 3, i = 4 // STOP
for i in 0..<5 {
    print("i = \(i)")
}

print("======")
// for (var i = 0; i <= 5; i++) {}
// i = 0, i = 1, i = 2, i = 3, i = 4, i = 5 // STOP
for j in 0...5 {
    print("j = \(j)")
}

// for each

let phrase = "this is the way"
// print(String(phrase.reversed()))

// string is just an array of characters
for k in phrase {
    print("Current letter is: \(k)")
}
// prhase = "this is the way"
// for-each loop
// on each iteration of the loop, k automatically increments
// the loop automiatcaly knows when to stop
// k = t
// k = h
// k = i
// k = s
// k = " "
// .....
// k = y
// END


let nasa:[Int] = [3, 4, 5, 6]
let reversedNasa = nasa.reversed()

for value in reversedNasa {
    print("Number is: \(value)")
}





//MARK: Functions
// 1. Void Function + no params
//public void sum() {
//    int a = 5;
//    int b = 6;
//    System.out.println(a+b);
//}


// you do not have to specify access modifiers (visibily modifiers)
// In swift, you don't have to worry about it
// Some of the keyword exist (Private) --> but you very rarely use it
func sum() {
    let a:Int = 5      // explicit declaration
    let b = 6          // implicit declaration
    print("Sum of the numbers is: \(a+b)")
}

//public void sum(int a, int b) {
//    System.out.println(a+b);
//}
func sum1(a:Int, b:Int) {
    print("Sum of the numbers is: \(a+b)")
}

// 3. Value returning function + no params
//public int sum() {
//    int a = 5;
//    int b = 6;
//    return a+b;
//}
func sum2() -> Int {
    let a:Int = 70      // explicit declaration
    let b = 80          // implicit declaration
    return a+b
}


// 4. Value returning function + params
//public int sum(int a, int b) {
//    return a+b
//}
func sum3(a:Int, b:Int) -> Int {
    return a+b
}

// call your function
sum()
// sum1(5, 6)           // wrong
sum1(a:10,b:15)         // correct

let c = sum2();
print("sum2() returned a value of: \(c)")

let d = sum3(a:100, b:101);
print("sum3() returns a value of: \(d)")



// write a function to determine if a number if even or odd
// - if number is even, then otuput true
// - otherwise output false

func isEven(a:Int) -> Bool {
    if (a % 2 == 0) {
        return true
    }
    return false
}

// using the function above, write a program that
// outputs whether a number is even or odd
// Do all numbers between 1 and 10

print(isEven(a:5))      // odd
print(isEven(a:4))      // even

print("------")
for i in 1...10 {     // i = 1 to i = 10
    print("\(i) is even? \(isEven(a:i))")
//  System.out.println(i + " is even " + isEven(i))
}

// while loop
print("------")
var count = 1
while (count <= 10) {
    print("\(count) is even? \(isEven(a:count))")
    count = count + 1         // ++ doesn't work
    // option 2:
    // count += 1
}

//MARK: challenge by tutor
func simpleAddition(firstNumber x: Int, secondNumber y: Double) -> Double {
    var result = Double(x) + y
    result += 20
    return result
}

let result = simpleAddition( firstNumber: 5, secondNumber: 10)
print(result)


// MARK: array examples

// array of integers
// calculate the sum of all the integers in the array
let numbers = [5, 10, 20, -1, 4]            // implicit declaration  -> array of ints
let grades:[Double] = [90, 100, 85.5, 55, 76.1] // explicit declaration --> [____]

// 1. calculate the sum of all integers in the array
var summ = 0
for x in numbers {
    summ = summ + x
}
print("Sum of all numbers \(summ)")

// 2. calcuate the average grade for the course
var total = 0.0                 // 0.0 = implicitly declare the variable as a Double
//var total:Double = 0            // explicitly declaring th variable
for grade in grades {
    total = total + grade
}
let average:Double = total / Double(grades.count)
print("Average is: \(average)")


// Write the code to ask the user to continously enter names
// The code stores each name into an array
// When the use exits the program, the program outputs the total number of itmes in the name array

// 1. create an empty array to store names in
var namesArray:[String] = [String]()        // explicit declaration
//var namesArray = [String]()               // impliciat declaration

// 2. continously ask the user to enter names
var name:String = ""
repeat {
    print("Enter a friend's name, or q to quit")
    name = readLine()!
    
    // 2a. Store the name in the names array
    if (name != "q") {
        namesArray.append(name)
    }
} while (name != "q")

// 3. Output the number of friends you have!
print("Program ended.")
print("You have \(namesArray.count) friends")

// 4. Access items in the array
print("Friend #1 is \(namesArray[0])");
print("Friend #2 is \(namesArray[1])");
print("Last friend is \(namesArray[namesArray.count - 1])");

// 5. Use array helper functions
print("First friend is: \(namesArray.first)")
print("Last friend is: \(namesArray.last)")

// 6. Update the value of an item in the array
namesArray[0] = "Zebra"
print("First friend is: \(namesArray.first)")

// 7 . Removing a friend
namesArray.remove(at:0)         // arrayList.remove(0)
                                // - Remove 0 items from the array


print("updated list of friends")
for name in namesArray {
    print("Friend: \(name)")
}


//2D array
//let skillTree: [[String]] = [
//    [ "Attack", "Barage", "Heavy Hitter"],
//    [ "Gaurd", "Evasion", "Run"]
//]
//print(skillTree[0])

//MARK: Dictionaries

// dictionarys key value pairs
// airports
// you must specify the data type of the KEY
// you must specify the data type of the VALUE

// [String:String] = create a dictionary where the key = String, value = String
// [Int:String] = create a dictionary where key = Int, value = String
var airports:[String:String] = ["YYZ":"Toronto", "LHR":"London Heathrow", "YUL":"Montreal Trudeau Airport", "FRA":"Frankfurt", "YQZ":"Gander"]

// 1. access individual values in the dictioanry
print(airports["YYZ"])          // no ! = Optional("Toronto")
print(airports["YQZ"]!)         // ! = Gander

// 2. update individual values?
airports["YYZ"] = "Toronto International Airport"
print(airports["YYZ"]!)          // no ! = Optional("Toronto")

// 3. delete an airport
airports["YUL"] = nil

// 4. add a new item to the dictionary
airports["YVR"] = "Vancouver"

// 4. loop through the dictionary and output all the values
for (code, name) in airports {
    print("Airport code: \(code)")
    print("Airport name: \(name)")
    print("----")
}


for (k, v) in airports {
    print("Airport code: \(k)")
    print("Airport name: \(v)")
    print("----")
}

// just getting the values
print("----")
for item in airports.values {
    print("Name: \(item)")
}
print("----")

print("----")
for k in airports.keys {
    print("Code: \(k)")
}
print("----")


// generate random values
let number = Int.random(in: 0...10)



// first time through the loop:
// - get the item from the dictionary
// - k = the item's key
// - v = the item's value

// second time time through the loop:
// - get the item from the dictionary
// - k = the item's key
// - v = the item's value

/// ...etc etc




// Dictionary & Array
// Array you access with an index (position)
// Dictionary you access with a key

// Arrays are ORDERED collectiosn
// - the order you insert items in is the order they stay
// - if you put something in position 4, it will always remain in psotion 4
// - WILL guarnetee an order

// Dictionaries are UNORDERED collections
// - no concept of order
// - no concept of position
// - no conception of who is in pos 1, pos2 pos 3
// - the order that you stick things into the dictionary, is NOT the same order that you might get it out in
// - the programming lnagauge will NEVER guarnetee an order
