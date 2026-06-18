//
//  Book.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

class Book: LibraryItem {

    var author: String
    var numberOfPages: Int
    
    init(itemID: String, title: String, isBorrowed: Bool, author: String, numberOfPages: Int) {
        self.author = author
        self.numberOfPages = numberOfPages
        
        super.init(itemID: itemID, title: title, isBorrowed: isBorrowed)
    }
    
    override func displayInfo() -> String {
        return "\(super.displayInfo()), Author: \(author), Number of Pages: \(numberOfPages)"
    }
    
//    override func borrowItem() {
//        
//    }
//    
//    override func returnItem() {
//        
//    }
}
