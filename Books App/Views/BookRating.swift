//
//  BookRating.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import SwiftUI

struct BookRating: View {
    
    @EnvironmentObject var model: ViewModel
    
    var book: Book
    
    var body: some View {
        VStack {
            Text("Tap to read")
                .font(.title)
            
            Image("cover\(book.id)")
                .resizable()
                .scaledToFit()
            
            Button {
                // update isFavorite property
                model.updateFavourite(bookId: book.id)
                
            } label: {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .accentColor(.yellow)
            }

        }
    }
}

struct BookRating_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ViewModel()
        
        BookRating(book: model.books[1])
    }
}
