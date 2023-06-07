//
//  BookModel.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import Foundation

class BookModel: ObservableObject {
    
    var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
}
