//
//  StoryBook.swift
//  BookStore1
//
//  Created by Anna Sawińska on 18/03/2020.
//  Copyright © 2020 Anna Sawińska. All rights reserved.
//

import Foundation

class BookStore {
    
    var bookList: [Book] = []
    
    init () {
        var newBook = Book()
        newBook.title = "Swift for Absolute Beginners"
        newBook.author = "Bennett and Lees"
        newBook.description = "iOS Programming made easy."
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Farewell to Arms"
        newBook.author = "Ernest Hemingway"
        newBook.description = "The story of an affair between an English nurse and an American soldier on the Italian front during World War I."
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Little Princess"
        newBook.author = " ‎Frances Hodgson Burnett"
        newBook.description = "Kapitan Crewe, wdowiec, zostaje wezwany na wojnę w Afryce Zachodniej, i na czas swojej nieobecności umieszcza córkę Sarę w ekskluzywnej pensji dla panien."
        bookList.append(newBook)
    }
}
