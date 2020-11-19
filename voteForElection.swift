//
//  main.swift
//  Voting_for_President
//
//  Created by Maham Shamail on 03/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
//struct Emp{
//    var name : String
//    var department : String?
//    var hoursPerWeek : Int = 38
//    var hourlywage : Int = 15
//
//    init(name: String, department: String) {
//        self.name = name
//        self.department = department
//
//    }
//    init(name: String, department : String, hoursPerWeek : Int , hourlywage : Int ) {
//        self.name = name
//        self.department = department
//        self.hourlywage = hourlywage
//        self.hoursPerWeek = hoursPerWeek
//    }
//    //computed property instead of a func
//    var needsOverTime: Bool {
//        get{
//            if(self.hoursPerWeek>40){
//                return true
//            }
//            else{
//                return false
//            }
//        }
//    }
//
//}

//struct Person {
//    //should my prop be a let or a var
//    //should prop be optional or non-optional
//    var name : String
//    var email : String?
//    var dog: Dog?
//
//}
//
//struct Dog{
//    var name : String
//    let breed : String
//    func bark(){
//        print("Wooof!")
//    }
//    func poop(){
//        print("Poopin!")
//    }
//
//}
//var poloDog = Dog(name: "Polo", breed:"Poodle")
//poloDog.name = "Stroodle"
//
//var clare = Person(name: "Clare",email: nil, dog: poloDog)
//print(clare)

//var your_vote: Int
//
//while your_vote != -1 {
//
//}
//
//each option can be assigned a raw val, raw values need to be unique

enum Candidate: Int{
    case Joe_Biden = 1
    case Kanye_West
    case Trump
}

var biden : Int = 0
var kanye : Int = 0
var trump : Int = 0

var userChoice: Int
repeat{
    print("Enter your vote:")
    print("press 1 for biden")
    print("press 2 for kanye")
    print("press 3 for trump")

    userChoice = Int(readLine()!)!

    switch userChoice {
    case 1:
        biden += 1
    case 2:
        kanye += 1
    case 3:
        trump += 1
    default:
        print("Invalid selection")
    }
}while (userChoice != -1)
//if let userChoice = readLine(){
//
//}
//else{
//
//}

print("Vote Results")
print("Biden: \(biden)")
print("kanye: \(kanye)")
print("Trump: \(trump)")
