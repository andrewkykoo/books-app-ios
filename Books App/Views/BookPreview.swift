//
//  BookInfoView.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import SwiftUI

struct BookPreview: View {
    
    var book: Book
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(book.title)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    if book.isFavourite {
                        Image(systemName: "star.fill")
                            .resizable()
                    }
                }
                
                Text(book.author)
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
        .accentColor(.black)
    }
}

struct BookInfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ViewModel()
        
        BookPreview(book: model.books[1])
    }
}
