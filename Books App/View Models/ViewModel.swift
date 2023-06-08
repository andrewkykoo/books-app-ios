//
//  BookModel.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    func updateFavourite(bookId: Int) {
        
        if let index = books.firstIndex(where: {$0.id == bookId}) {
            books[index].isFavourite.toggle()
        }
        
    }
    
    func updateRating(bookId: Int, rating: Int) {
        if let index = books.firstIndex(where: {$0.id == bookId}) {
            books[index].rating = rating
        }
    }
    
}
