class ShoppingCart {

    private var books = [Book]()

    func add(book: Book) {
        books.append(book)
    }

    func checkout() -> Double {
        return books.reduce(0.0) { $0 + $1.price }
    }
}
