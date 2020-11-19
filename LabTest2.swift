//
//  main.swift
//  lab2
//
//  Created by Maham Shamail on 06/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

print("Hello, World!")

//enum Color {
//
//    case green
//
//    case blue
//
//    case purple
//
//    case pink(value:String)
//
//}

//enum Color:String {
//
//    case "green", "blue", "purple", "pink"
//
//}
//enum Color {
//
//    case green, blue, purple, pink
//
//}
//enum Color:Int {
//
//    case green = 1
//
//    case blue = 2
//
//    case purple
//
//    case pink
//
//}
//class Animal{
//    var name: String?
//}
//var a = Animal()

//class Employee {
//    private var socialSecurityNumber = "000-000-000"
//    var cp: String? {
//        get{
//            return nil
//        }
//    }
//
//    init(ssn:String?) {
//
//            self.socialSecurityNumber = ssn!
//
//    }
//}
//struct V {
//    let s : String
//}
//var v = V(s: "String")
//
//struct Book  {
//    var t = "value"
//    var a = "s"
//}
//let B = Book(t: "h", a: "e")
//
//print(B.a)
//print(B.t)

//a banking system.
//customer bank acc
//withdraw, deposit and print current balance
/*
 
 */
struct Bank_of_Customers {
    let customers : [Customer]
}
struct Customer{
    let first_Name: String
    let last_Name: String
    let location: String
    let customerNo: Int
    
}
let bruce = Customer(first_Name: "Bruce", last_Name: "Wayne", location: "Brampton", customerNo: 12345)
let thanos = Customer(first_Name: "Thanos", last_Name: "Badman", location: "North York", customerNo: 56789)
let wonder = Customer(first_Name: "Wonder", last_Name: "Woman", location: "Oakville", customerNo: 39087)

let customers : [Customer] = [bruce, thanos, wonder]
let customerBank = Bank_of_Customers(customers: customers)



class Account: Bank_Of_Accounts{
    //withdrawn and deposited
    let accountNo: Int
    let customer: Customer
    var balance: Double
    let type: String
    let overdraft: Int
    var status : String{
        get{
            if(balance<0){
                return "debtor"
            }
            return "creditor"
        }
    }
    init(accountNo: Int,
     customer: Customer,
     balance: Double,
     type: String,
     overdraft: Int) {
        
        self.accountNo = accountNo
        self.customer = customer
        self.balance = balance
        self.type =  type
        self.overdraft =  overdraft
        super.init(accounts: [])
    }
    
     func withdraw (amount:Double){
        if(type == Type.Checking.rawValue){
            if((self.balance - amount) > -1){
                           self.balance = self.balance - amount
           }
        }
        else{
             self.balance = self.balance - amount
        }
        
    }
     func deposit (amount:Double) {
        self.balance = self.balance + amount
    }
     
}
class Bank_Of_Accounts {
    var accounts : [Account] = []
    init(accounts: [Account]) {
        self.accounts = accounts
    }
}

var accounts : [Account] = []

accounts.append(Account(accountNo: 1, customer: bruce , balance: 500, type: "Savings",overdraft: 0))
accounts.append(Account(accountNo: 2, customer: thanos , balance: 1000, type: "Savings",overdraft: 0))
accounts.append(Account(accountNo: 3, customer: wonder , balance: 500000.00, type: "Checking",overdraft: 1500))
accounts.append(Account(accountNo: 4, customer: bruce , balance: 400000.00, type: "Checking",overdraft: 10000))

let accountsBank = Bank_Of_Accounts(accounts: accounts)


enum Type: String{
    case Savings
    case Checking
}




//let bank = Bank_of_Customers()
