//
//  main.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

//sample data given
var book1: Book = Book( itemID: "abc1", title: "The Great Gatsby", isBorrowed: false, author: "naaz", numberOfPages: 100)
var book2: Book = Book( itemID: "abc2", title: "The Great Gatsby", isBorrowed: true, author: "naaz", numberOfPages: 100)

var mag1: Magazine = Magazine(itemID: "abc3", title: "The Great Gatsby", isBorrowed: true, issueNumber: 234, publicationMonth: "Jan")
var mag2: Magazine = Magazine(itemID: "abc4", title: "The Great Gatsby", isBorrowed: false, issueNumber: 123, publicationMonth: "Jan")

var libraryItems: [String:LibraryItem] = [
    "abc1" : book1,
    "abc2" : book2,
    "abc3" : mag1,
    "abc4" : mag2
]


func menu() {
    print()
    print("Library Management System")
    print()
    print("1. Add a Book")
    print("2. Add a Magazine")
    print("3. Display all items")
    print("4. Search Item")
    print("5. Borrow Item")
    print("6. Return Item")
    print("7. Delete Item")
    print("8. Exit")
    print()
    print("Enter your choice: ")
    
}
while true {
    menu()
    let userInput : String = readLine()!
    switch userInput {
        
        
    case "1": addBook()
        
    case "2": addMag()
        
    case "3": displayItems()
        
    case "4": searchItems()
        
    case "5": itemBor()
        
    case "6": itemRet()
        
    case "7": deleteItem()
        
    
        
    case "8":
        print("\n Exiting...")
        break
        
    default : print("Invalid option, try again")
    }
    if userInput == "8" {
        break;
    }
    
}
