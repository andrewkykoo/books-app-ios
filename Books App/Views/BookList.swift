//
//  ContentView.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import SwiftUI

struct BookList: View {
    
    @EnvironmentObject var model: ViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(model.books) { book in
                        NavigationLink(destination: BookRating(book: book)) {
                            BookPreview(book: book)
                        }

                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
            .environmentObject(ViewModel())
    }
}
