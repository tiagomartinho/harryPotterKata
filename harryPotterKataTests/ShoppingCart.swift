class ShoppingCart {

    private let unitPrice: Double
    private var books = [Book]()

    init(unitPrice: Double = 8.0) {
        self.unitPrice = unitPrice
    }
    
    func add(book: Book) {
        books.append(book)
    }

    func checkout() -> Double {
        return Double(books.count) * unitPrice
    }
}
