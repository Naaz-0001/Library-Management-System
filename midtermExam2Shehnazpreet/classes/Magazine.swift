//
//  Magazine.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

class Magazine: LibraryItem {
    
    var issueNumber: String
    var publicationMonth: String
    
    init(itemID: String, title: String, isBorrowed: Bool, issueNumber: String, publicationMonth: String) {
        self.issueNumber = issueNumber
        self.publicationMonth = publicationMonth
        super.init(itemID: itemID, title: title, isBorrowed: isBorrowed)
    }
    
    override func displayInfo() -> String {
        return "\(super.displayInfo()), Issue: \(issueNumber), Month: \(publicationMonth)"
    }
    
    override func borrowItem() {
        
    }
    
    override func returnItem() {
        
    }
}
