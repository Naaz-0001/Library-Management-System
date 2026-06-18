//
//  validations.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

func getValidString(prompt: String) -> String {

    while true {
        print(prompt)

        let input = readLine() ?? ""

        if !input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return input
        }

        print("Invalid input. Please enter again.")
    }
}

func getValidInt(prompt: String) -> Int {

    while true {
        print(prompt)

        let input = readLine() ?? ""

        if let value = Int(input) , value > 0 {
            return value
        }

        print("Invalid input. Please enter a valid number.")
    }
}

func getValidDouble(prompt: String) -> Double {

    while true {
        print(prompt)

        let input = readLine() ?? ""

        if let value = Double(input) , value > 0.0 {
            return value
        }

        print("Invalid input. Please enter a valid number.")
    }
}


func getUniqueItemID() -> String {

    while true {

        let id = getValidString(prompt: "Enter unique Item ID:")

        if idExit(id: id){
            print("An item with this ID already exists. Please enter another ID.")
        } else {
            return id
        }
    }
}

func idExit(id:String) -> Bool{
    return libraryItems[id] != nil
}

func getExistingItemID(prompt: String) -> Int? {

    while true {

        print(prompt)
        let input = readLine() ?? ""

        // back to menu option
        if input == "0" {
            return nil
        }

        //validate number
        guard let id = input else {
            print("Invalid input. Please enter a valid number.")
            continue
        }

        //id check
        if idExit(id: id) {
            return id
        }

        print("Employee not found. Please try again or ")
        print("Enter 0 to return to the main menu.")
        print()
    }
}
//

func itemAvailable() -> Bool {
    if libraryItems.isEmpty {
        print("No items found. Please add an item first")
        return false
    }
    return true
}
 
