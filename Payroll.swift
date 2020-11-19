//
//  main.swift
//  Practice For Test 1
//
//  Created by Maham Shamail on 22/10/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

// students = 5000
//regStaff
//faculty
// facultySal = (hoursWorked * rateOfPay) + teachingAllowance
// incomeTax = (grossSal * 0.25) + healthSurcharge
//incomeTaxFreeAllowance = 2500
//
var employeeNumber: Int? = nil
while(true){
    print("(== nil)\n\nEnter Employee Number:")
    employeeNumber = Int(readLine()!)
    if (employeeNumber == nil) || (employeeNumber! <= 0){
       print("Invalid input, please try again!")
    }
    else{
        break
    }
}

var employeeName: String? = nil
while(true){
    print("( != nil )\n\nEnter Employee Name:")
     employeeName = readLine()
    if employeeName != nil && ((employeeName!).count != 0) {
//        print(employeeName)
//        print(employeeName?.count)
        break
    }
    else{
        print("Invalid input, please try again!")
    }
}
//optional binding
var employeeDepartment: String? = nil
while(true){
    print("(optional binding -> if let unwrappedEmployeeDepartment = employeeDepartment{})\n\nEnter Employee Department:")
     employeeDepartment = readLine()
    
    if let unwrappedEmployeeDepartment = employeeDepartment  {
        if(unwrappedEmployeeDepartment.count <= 0){
            print("Invalid input, please try again!")
        }
        else{
            break
        }
    }
    else{
        print("Invalid input, please try again!")
    }
}
//coalescing is a part of memory management in which two adjacent free blocks of computer memory are merged
//nil coalesing operator
var hoursWorkedInAMonth: Int? = nil
while(true){
    print("(nil coalescing operator: ?? )\ncoalescing is a part of memory management in which two adjacent free blocks of computer memory are merged\n\nEnter Number of Hours Worked for the Month:")
     hoursWorkedInAMonth = Int(readLine()!) ?? -1
    if(hoursWorkedInAMonth! <= 0){
        hoursWorkedInAMonth = -1
    }
    if hoursWorkedInAMonth != -1{
        break
    }
    else{
        print("Invalid input, please try again!")
    }
}


var qualificationCode: String? = nil
while(true){
    print("Enter Qualification Code\n(B for Bachelors, M for Masters):")
    qualificationCode = readLine()
    if qualificationCode?.uppercased() == "M"{
        qualificationCode = "Masters"
        break
    }
    else if qualificationCode?.uppercased() == "B" {
        qualificationCode = "Bachelors"
        break
    }
    else{
        print("Invalid input, please try again!")
    }
}

//gaurd let
func calculateFacultySalary(with qualificationCode: String?, and hoursWorked: Int?) -> Double? {
    /*
     Faculty with a master’s degree would be paid $175 per hour and their teaching allowance would be $1500.00 per month. However, faculty with just a bachelor’s degree would be paid $100 per hour and their teaching allowance would be $600 per month.

     */
    
    var salary: Double? = nil
    guard let unwrappedQualificationCode = qualificationCode else{
        print("You did not enter a valid qualification code.")
        return salary
    }
    guard let unwrappedHoursWorked = hoursWorked else {
        print("You did not enter valid number of hours worked: (hours: \(hoursWorked))")
        return salary
    }
    //number of hours worked for a given month multiplied by their rate of pay plus a teaching allowance.
    if(unwrappedQualificationCode.lowercased() == "masters"){
        salary = (Double(unwrappedHoursWorked) * 175.0 ) + 1500.00

    }
    
    if(unwrappedQualificationCode.lowercased() == "bachelors" ){
        salary = (Double(unwrappedHoursWorked) * 100.0 ) + 600.00

    }
    
    return salary
}

func healthSurchargeFeeCalculation(using grossSalary: Double)-> Double?{
    var surchargeFee: Double? = nil
    guard let unwrappedSalary = salary else {
        print("Health Surcharge Fee could not be calculated, based on salary calculation.")
        return surchargeFee
    }
    if unwrappedSalary > 3000.0{
        surchargeFee = 33.0
    }
    if unwrappedSalary <= 3000.0{
        surchargeFee = 19.2
    }
    
    return surchargeFee
}

func incomeTaxCalculation(using grossSalary: Double) -> Double?{
    var incomeTax: Double? = nil
    guard let unwrappedSalary = salary else {
        print("Based on salary calculation corruption income tax could not be calculated")
        return incomeTax
    }
    if(unwrappedSalary > 2500){
        incomeTax = (unwrappedSalary - 2500) * 0.25
    }
    else{
        incomeTax = 0
    }

    return incomeTax
}
func netPayCalculation (subtracting incomeTax: Double?, and healthSurchargeFee: Double?, from grossSalary: Double?) -> Double? {
    var netPay: Double? = nil
    guard let grossSalaryUnwrapped = grossSalary else {
        print("Net Pay could not be calculated because of missing salary")
        return netPay
    }
    guard let healthSurchargeFeeUnwrapped = healthSurchargeFee else {
           print("Net Pay could not be calculated because of missing Health Surcharge Fee")
           return netPay
       }
    guard let incomeTaxUnwrapped = incomeTax else {
        print("Net Pay could not be calculated because of missing Income Tax")
        return netPay
    }
    netPay = grossSalaryUnwrapped - (incomeTaxUnwrapped + healthSurchargeFeeUnwrapped)
    return netPay
    
}
let salary = calculateFacultySalary(with: qualificationCode, and: hoursWorkedInAMonth)


if let unwrappedSalary = salary{
    let incomeTax = incomeTaxCalculation(using: unwrappedSalary)
    if let unwrappedIncomeTax = incomeTax{
        let healthSurchargeFee = healthSurchargeFeeCalculation(using: unwrappedSalary)
        if let unwrappedHealthSurchargeFee = healthSurchargeFee{
               let netPay = netPayCalculation(subtracting: unwrappedIncomeTax, and: unwrappedHealthSurchargeFee, from: unwrappedSalary)
            if let netPayUnwrapped = netPay{
                print("\n\n*** PAY SLIP GENERATED ***\n\nHELLO, \((employeeName!).uppercased())!\nPlease check your information and calculated salary below.\n\nEmployee Number: \(employeeNumber!)\nEmployee Department: \(employeeDepartment!)\nQualification: \(qualificationCode!)\nNumber of hours worked: \(hoursWorkedInAMonth!)\nGross Salary: \(unwrappedSalary)\nDeductions (Income Tax: \(unwrappedIncomeTax) + Health Surcharge: \(unwrappedHealthSurchargeFee)): \(unwrappedIncomeTax+unwrappedHealthSurchargeFee)\nNet Pay: \(netPayUnwrapped)")
                
            }
            else{
                print("Could not calculate net pay")
            }

        }
        else{
            print("Could not calculate Health Surcharge Fee")
        }
    }
    else{
       print("Could not calculate income tax")
    }
   
    
}else{
    print("Salary calculation function corrupted. Could calculate salary. Try again!")
}

