//
//  Books_AppApp.swift
//  Books App
//
//  Created by Andrew Koo on 6/7/23.
//

import SwiftUI

@main
struct Books_AppApp: App {
    var body: some Scene {
        WindowGroup {
            BookList()
                .environmentObject(ViewModel())
        }
    }
}
