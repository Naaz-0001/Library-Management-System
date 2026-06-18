//
//  functions.swift
//  midtermExam2Shehnazpreet
//
//  Created by Shehnazpreet Singh on 2026-06-18.
//

import Foundation

func addBook() {
    print("Adding a Book...")

    let itemID = getUniqueItemID()
    let title = getValidString(prompt: "Enter title:")
    let author = getValidString(prompt: "Enter Author:")
    let pages = getValidInt(prompt: "Enter pages:")
    
    
    let newBook = Book(
        itemID: itemID, title: title, isBorrowed: true, author: author, numberOfPages: pages
    )
    
    libraryItems[itemID] = newBook

    print("Book added successfully!")
}

func addMag(){
    print("Adding a Magazine...")

    let itemID = getUniqueItemID()
    let title = getValidString(prompt: "Enter title:")
    //let isBorrowed
    let issueNo = getValidInt(prompt: "Enter Issue Number:")
    let publicationMonth = getValidString(prompt: "Enter Month of publication:")
    
    
    let newBook = Magazine(
        itemID: itemID, title: title, isBorrowed: true, issueNumber: issueNo, publicationMonth: publicationMonth
    )
    
    libraryItems[itemID] = newBook

    print("Magazine added successfully!")
    
}

func displayItems(){
    for item in libraryItems {
        print(item.value.displayInfo())
    }
}

func searchItems(){
    if itemsAvailable(){
        guard let idToSearch = getExistingItemID(prompt: " Enter the id of the item you want to search or 0 for Main menu: ")
        else{
            return
        }

        if idExist(id: idToSearch){
            let itemId = idToSearch
            print(libraryItems[itemId]!.displayInfo())
            
        }
    }
}
   
func itemBor(){
    if itemsAvailable(){
        guard let idToBorrow = getExistingItemID(prompt: " Enter the id of the item you want to borrow or 0 for Main menu: ")
        else{
            return
        }

        if idExist(id: idToBorrow){
            let itemId = idToBorrow
            libraryItems[itemId]?.borrowItem()
            return
        }
    }
}

func itemRet(){
    if itemsAvailable(){
        guard let idToReturn = getExistingItemID(prompt: " Enter the id of the item you want to return or 0 for Main menu: ")
        else{
            return
        }

        if idExist(id: idToReturn){
            let itemId = idToReturn
            libraryItems[itemId]?.returnItem()
            return
        }
    }
}

func deleteItem(){
    print()
    if itemsAvailable(){
        guard let idToDel = getExistingItemID(prompt: " Enter the id of the item you want to delete or 0 for Main menu:")
        else{
            return
        }
        
        if idExist(id: idToDel){
            let index = idToDel
            libraryItems[index] = nil
            print("Item deleted successfully")
        }
        
        
    }
}

