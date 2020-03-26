//
//  AddBookViewController.swift
//  BookStore1
//
//  Created by Anna Sawińska on 24/03/2020.
//  Copyright © 2020 Anna Sawińska. All rights reserved.
//

import UIKit


protocol BookStoreDelegate {
       func newBook (_ controller: AnyObject, newBook: Book)
       func editBook(_ controller: AnyObject, editBook: Book)
       func deleteBook(_ controller: AnyObject)
   }

class AddBookViewController: UIViewController {

    var book = Book()
    var delegate: BookStoreDelegate?
    var read = false
    var editBook = false
    
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    
    @IBOutlet weak var descriptionText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        if editBook == true {
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            
            if book.readThisBook {
                switchOutlet.isOn = true
                
            }else {
                switchOutlet.isOn = false
            }
        }
       
    }
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveBookAction(_ sender: Any) {
        
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text
        
        if let text = pagesText.text, let pages = Int(text){
            book.pages = pages
        }
        if switchOutlet.isOn == true{
            book.readThisBook = true
        } else {
                book.readThisBook = false
        }
        if (editBook) {
            delegate?.editBook(self, editBook:book)
        } else {
            delegate?.newBook(self, newBook:book)
            }
        }
        
    }
    
    
    

