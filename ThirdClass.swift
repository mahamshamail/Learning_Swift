//
//  main.swift
//  3rd Class
//
//  Created by Maham Shamail on 21/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

//var myArray: [ Int ] = [0,0,0,0,0]
//var myInput: Int
//print("Enter 5 numbers to find the largest and smallest number.")
//for i in 0...4{
//    print("Enter your number \(i+1): ")
//    let myStringInput = readLine()
//    myInput = Int(myStringInput!)!
//    myArray[i] = myInput
//
//}
//
//func minMax (myArr:[Int]) -> (min:Int, max:Int){
//    var min : Int = myArr[0]
//    var max : Int = myArr[0]
//    for i in 0..<myArr.count{
//        if (myArr[i]>max) {
//            max = myArr[i]
//        }
//        if (myArr[i]<min) {
//            min = myArr[i]
//        }
//
//    }
//    return (min, max)
//}
//
//print("Your \(minMax(myArr: myArray))")

//safely typed
//weakly/loosely typed
//Constants/ non-mutable (Default) let > Variable
//type inference:implicit type defination
//explicit
//why use let? To enhance intention behind code and readiblity
//placeholders \()
//
//control contructs
//loops
//for i in 10...1{
//    print(i)
//}
//for i in 0...5{
//    print(i)
//}
////repeat while
////paranthesis are not mandatory
//var count: Int = 0
//repeat{
//
//}while count<10
////invoke a func
////swift functions can return multiple values -> tupple
//func specialfunc()->(val1:Int, val2:Int){
//    return(0,0)
//}
//var movies = ["r","e"]
//movies.insert("String", at: 1)
//movies.append("Sequence")
//movies.remove(at: 2)
//
//for _ in (0...10).reversed(){
//
//}
//
//for (i, movie) in movies.enumerated(){
//
//}
//- reading a json file - if a field you request doesn't exist is why u use optionals,

//func positiveOrNegative (num: Int) -> String? {
//    if(num>0){
//        return "positive"
//    }
//    else if(num<0){
//        return "negative"
//    }
//    else{
//        return nil
//    }
//}
//print("Your number is \(String(describing: positiveOrNegative(num: 0)))")
while(true){
   
    print("Enter employee number: ")
    let employeeNumber : Int? = Int(readLine()!) ?? nil
    if(employeeNumber != nil){
       break
    }
    else{ print("Your Employee Number is invalid, try again!") }
}
while(true){
    print("Enter employee name: ")
    let employeeName: String? = readLine()
    print(employeeName!)
    if(employeeName != nil || employeeName! == "" || employeeName! == "\n"){
        break
    }
    else{ print("wrong employee name, try again")   }
}

while(true){
    print("Enter hours worked: ")
    let hours: Int? = Int(readLine()!) ?? nil
    if(hours != nil){
        break
    }
    else{
        print("wrong numbers of hours worked, try again")
    }
}

