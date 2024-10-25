
import SwiftUI
import UniformTypeIdentifiers

// Define a custom content type identifier for ToDo
extension UTType {
    static var book: UTType {
        UTType(exportedAs: "com.createchsol.book")
    }
}

extension Book: Transferable {
    // Conform to Transferable protocol
    static var transferRepresentation: some TransferRepresentation {
        CodableRepresentation(contentType: .book)
    }
    
    // Define coding keys
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case author
        case category
    }
}
