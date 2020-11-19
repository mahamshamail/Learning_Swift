//
//  main.swift
//  2nd Class
//
//  Created by Maham Shamail on 20/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

//MARK: FUNCTION TYPES
//MARK: 1. no return type, no params
func sum(){
    //two ways to declare variables: implicit(infer), explicit
    let a: Int = 5 //explicit
    let b = 6 //implicit
    print("Sum of numbers is: \(a+b) ")
    
}
sum()

//MARK: 2. no return, has params
func sum1(a:Int, b:Int){
    print("Sum of numbers is: \(a+b) ")
}
sum1(a:10, b:15) //calling functions with params needs us to mention the names of the params

//MARK: 3. value returning func, no params
func sum2() -> Int{
    return 6+9
}
print("Sum of numbers is: \(sum2()) ")

//MARK: 4. value returning with params
func sum3(a:Int, b:Int) -> Int{
    return a+b
}
print("Sum of numbers is: \(sum3(a: 6,b: 9)) ")

func isEven(a:Int ) -> Bool {
        if((a%2) == 0){
            return true
        }
        return false
}
for i in 1...10{
    print("Is number \(i) even: \( isEven(a: i))")
}

var count: Int = 11
while(count <= 20){
    count += 1 //count++ does not work
    print("Is number \(count) even: \( isEven(a: count))")
}

var name: String = ""
repeat{
    print("Enter a name or q to quit")
    name = readLine() ?? " "
}while(name != "q")

//MARK: arrays and dictionaries
// 1 create an array of strings and a dictionary of string and double
var shopItemsArray: [String] = ["Salt","Bread","Butter","Noodles"]
let shopItemsDictionary: [String : Int] = ["Salt" : 14 ,"Bread" : 10  ,"Butter" : 23 ,"Noodles" : 5]
// 2
print(shopItemsArray.contains("Blouse"))

// 3
shopItemsArray.insert("Ink", at: 1)

// 4
let selectedItem : String = shopItemsArray[3]

// 5
let selectedItemPrice: Int = shopItemsDictionary[selectedItem]!

//MARK: sets
// 6
let fullArmorSet: Set<String> = ["knife","gun","sword","arrow"]
let currentArmorSet: Set<String> = ["knife","gun","arrow"]

// 7
let missingArmor: Set<String> = fullArmorSet.subtracting(currentArmorSet)
//MARK: tuple
// 8
let armorPieceTuple = (name: "sword", cost: 2, canRquip: true)
print(armorPieceTuple.name)

