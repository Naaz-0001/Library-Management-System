//
//  LibraryItem.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

class LibraryItem: Borrowable{
    var itemID : String
    var title : String
    var isBorrowed : Bool
    
    init(itemID: String, title: String, isBorrowed: Bool) {
        self.itemID = itemID
        self.title = title
        self.isBorrowed = isBorrowed
    }
    
    func displayInfo() -> String{
        return "  ID: \(itemID)       Name: \(title)       Status: \(isBorrowed ? "Borrowed" : "Available")"
    }
    
    
    func borrowItem() {
        if !isBorrowed {
            isBorrowed = true
            print("Item borrowed successfully.")
        } else {
            print("Error: Item is already borrowed")
        }
    }
    func returnItem() {
        if isBorrowed {
            isBorrowed = false
            print("Item returned successfully.")
        }
        else{
            print("Error: Item is already available")
        }
    }
}
