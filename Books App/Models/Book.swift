//
//  Book.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import Foundation

struct Book: Decodable {
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
