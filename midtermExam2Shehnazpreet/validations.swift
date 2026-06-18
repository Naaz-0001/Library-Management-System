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

        if idExist(id: id){
            print("An item with this ID already exists. Please enter another ID.")
        } else {
            return id
        }
    }
}

func idExist(id: String) -> Bool {
    return libraryItems[id] != nil
}

func getExistingItemID(prompt: String) -> String? {

    while true {

        print(prompt)
        let input = readLine() ?? ""

        // back to menu option
        if input == "0" {
            return nil
        }

        // check if ID exists
        if idExist(id: input) {
            return input
        }

        print("Item not found. Please try again.")
        print("Enter 0 to return to the main menu.")
        print()
    }
}
//

func itemsAvailable() -> Bool {
    if libraryItems.isEmpty {
        print("No items found. Please add an item first")
        return false
    }
    return true
}
 
