//
//  BookContent.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import SwiftUI

struct BookContent: View {

    var book: Book
    @State private var currentPageIndex = 0
    
    private func previousPage() {
        if currentPageIndex > 0 {
            currentPageIndex -= 1
        }
    }
    
    private func nextPage() {
        if currentPageIndex < book.content.count - 1 {
            currentPageIndex += 1
        }
    }
    
    var body: some View {
        VStack {
            Text(book.content[currentPageIndex])
                .padding()
            
            Spacer()
            
            HStack {
                Button(action: previousPage) {
                    Image(systemName: "chevron.left")
                }
                .disabled(currentPageIndex == 0)
                
                Text(String(currentPageIndex + 1))
                    .padding([.leading, .trailing], 50)
                
                Button(action: nextPage) {
                    Image(systemName: "chevron.right")
                }
                .disabled(currentPageIndex == book.content.count - 1)
            }
            .padding()
            .accentColor(.black)
        }
        
    }
}

struct BookContent_Previews: PreviewProvider {
    static var previews: some View {
        let model = ViewModel()
        
        BookContent(book: model.books[1])
    }
}
