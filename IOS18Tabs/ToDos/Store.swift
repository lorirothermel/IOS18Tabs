
import SwiftUI

@Observable
class Store {
    var books: [Book]
    var whishList: [Book] {
        books.filter{$0.category == .wishList}
    }
    var reading: [Book] {
        books.filter{$0.category == .reading}
    }
    var completed: [Book] {
        books.filter{$0.category == .completed}
    }
    
    
    init() {
        self.books = Book.all
    }
}
