//
//  main.swift
//  FIrst Class
//
//  Created by Maham Shamail on 19/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation //basic swift library

print("Hello, World!")
/*
Swift is a strongly typed or type safe language, that means it needs to know var type. You dont always have to define a type every time, however. By default always declare your varibles as let unless it changes.
variables types:
 1) let-> constants or non-mutable
 2) var-> mutable
 
 Fix in Xcode is helpful
 
 let is default, variables are nonmutable by default, var (mutable variables) ere the exception
 
 Type Inference - implicit declaration of type
 var pi is an example
 
 Swift does not make assumptions about the value of a variable, int, string, object etc have no values if you dont assign a value
 
 */

//

let pi = 3.14
//pi = 4.5 wrong

// explicit declaration is better than inference
var salesTax: Double = 5.5
salesTax = 8.7

//swift has a concept of the optional variables (wed or thursday)
// ! ? modifiers to a data type
//optional can be null
// Philosophy of Swift: Doing because there is a good reason to not because it's convinient

//how to take input in swift
let t = Int("ttt")//nil
print(t)
print("Enter your name")
let name = readLine()// returns an optional String, can be nil
print("Hello \(name!), how are you? ")
print("Wha is your favourite number?")
let num = readLine()
let n : Int = Int(num!)!// handles nil values, !=promise, value will never be null
print("the root square of your number is: " + String( (n * n) ) )

//null = nil
//optionals
//let s: Srring = nil //NOT OK
// when '?' is included type is allowed to be nil
let s:String? = nil // a different data type that is allowded to be nil or null

var isActive:Bool = true
isActive.toggle() //
print(isActive)

let s1 = "d"
let s2 = "c"
print(s1.count)
print(s1.isEmpty)
// contains, uppercase, lowercase, reverse
let compare = (s1) != (s2) //works in swift
print(compare)

if(compare) {
    print("compare is true")
}
else if(!compare) {
    print("compare is false")
}
else {
    print("compare is nil")
}
//strings, arrays of characters
let nasa: [Int] = [2,3,4]
let nasaReverse = nasa.reversed()
//arrays in swift are not fixed
for element in nasaReverse {// for each loop
  print(element)
}
print("\n 0..<5")
for i in 0..<5{
    print(i) //0 to 4
}
print("\n0...5")
for i in 0...5{
    print(i) //0 to 5
}


