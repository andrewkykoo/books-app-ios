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
            NavigationLink(destination: BookContent(book: book)) {
                VStack {
                    Text("Start reading!")
                        .font(.title)
                        .accentColor(.black)
                    Image(systemName: "arrow.down")
                        .accentColor(.black)
                        .padding([.bottom], 10)
                    
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
            }
            
            
            Button {
                // update isFavorite property
                model.updateFavourite(bookId: book.id)
                
            } label: {
                HStack {
                    Text("Mark as favourite")
                        .accentColor(.black)
                    
                    Image(systemName: book.isFavourite ? "hand.thumbsup.fill" : "hand.thumbsup")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .accentColor(.blue)
                }
                .padding()
            }
            
            // TODO: Rating Scale
            HStack {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: index <= book.rating ? "star.fill" : "star")
                        .foregroundColor(index <= book.rating ? .yellow : .gray)
                        .onTapGesture {
                            model.updateRating(bookId: book.id, rating: index)
                        }
                }
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
