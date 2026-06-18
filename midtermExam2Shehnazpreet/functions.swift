//
//  functions.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

func addBook() {
    print("Adding a Book...")

    let employeeID = getUniqueEmployeeID()
    let employeeName = getValidString(prompt: "Enter employee name:")
    //let productCategory = getValidString(prompt: "Enter product category:")
    let monthlySalary = getValidDouble(prompt: "Enter monthly salary:")
    
    
    let newEmployee = FullTimeEmployee(
    
        name: employeeName,
        id: employeeID,
        monthlySalary: monthlySalary
    )
    empDic[employeeID] = newEmployee
    

    print("Employee added successfully!")
}

func addMag(){
    
}

func displayItems(){
    
}

func searchItems(){
    
}
   
func borrowItem(){
    
}

func returnItem(){
    
}

func deleteItem(){
    
}

