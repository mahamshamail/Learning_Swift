//
//  main.swift
//  test1
//
//  Created by Maham Shamail on 23/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

//var x:Int = 100
//
//var y:Double = 100
//
//var b:Bool = String(x) == String(y)
//
//print(b)

//var cities:[String:Int] = [
//
//  "Mexico City": 22600000,
//  "New York City": 22200000,
//  "Los Angeles": 17700000,
//  "Chicago": 9750000,
//  "Washington":8500000,
//  "San Francisco":7800000,
//  "Boston": 7600000,
//  "Toronto":7450000
//]
////cities["Chicago"] = nil
//
//
//cities.removeValuesFromKey("Chicago")

         
//del cities["Chicago"]

         
//delete cities["Chicago"]


//for (k, v) in cities{
//    print( "\(k) : \(v)")
//}

//func isPerfect (num: Int) -> Bool{
//    guard num >= 2 else {
//        return false
//
//    }
//    var i = 1
//    var sum = 0
//    while(i < num){
//        if num % i == 0{
//            print("factor: \(i)")
//            sum = sum + i
//        }
//        i += 1
//    }
//    if(sum == num){
//        return true
//    }
//    else{
//        return false
//    }
//}
//print(isPerfect(num: 0))

//
//let input:String = readLine()!
//
//print(input)
//var x:Int = 2 * Int(input)!
//
//print(x)

//    var x = 25
//    var y = 10.5
//    var result = x + y
//    print(result)
//var zoo:[String] = "Penguin"

let cities:[String:Int] = [
  "Mexico City": 22600000,
  "New York City": 22200000,
  "Los Angeles": 17700000,
  "Chicago": 9750000,
  "Washington":8500000,
  "San Francisco":7800000,
  "Boston": 7600000,
  "Toronto":7450000
]
func convertDictToArray(dic: [String: Int]) -> (arr1: [String] , arr2: [Int]){
    var array1: Array <Int> = Array<Int>()
    var array2: Array <String> = Array<String>()
    for (key, value) in dic{
        array1.append(value)
        array2.append(key)
    }
    print("array 1")
    for a in array1{
        print(a)
    }
    print("array 2")
    for a in array2{
        print(a)
    }
    return (array2, array1)
}
convertDictToArray(dic: cities)

//func login(user:(username:String?, password: String?)) -> Bool{
//    guard let unwrappedUserName = user.username, let unwrappedPassword = user.password  else {
//        print("User Name or password inavlid")
//        return false
//    }
//
//    if(unwrappedPassword == "1234!" && unwrappedUserName == "jonsnow@gmail.com"){
//        return true
//    }
//    return false
//}
//
//var loggedIn:Bool = false
//loggedIn = login(user:("peter@smith.com", "1234!"))
//   print(loggedIn)
//   loggedIn = login(user:("jonsnow@gmail.com", "1234!"))
//   print(loggedIn)
//   loggedIn = login(user:(nil, nil))// --> returns false
//   print(loggedIn)
//   loggedIn = login(user:("", "1234!"))
//   print(loggedIn)
//
//print("Enter your email")
//let e = readLine()
//print("Enter your password")
//let p = readLine()
//if let unwrappedE = e, let unrappedP = p{
//    let u = (username: unwrappedE, password: unrappedP)
//    loggedIn = login(user: u)
//    print(loggedIn)
//
//
//}
//else{
//    print("Invalid input!")
//}
//
//

//let input:String = "readLine()!"
//
//var x:Int = 2 * Int(input)
