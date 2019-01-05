class ShoppingCart {

    private var books = [Book]()

    func add(book: Book) {
        books.append(book)
    }

    func checkout() -> Double {
        var booksCount = [Book: Int]()
        for book in books {
            if let bookCount = booksCount[book] {
                booksCount[book] = bookCount + 1
            } else {
                booksCount[book] = 1
            }
        }
        let hasDiscount = booksCount.keys.count > 1
        let multiplier = hasDiscount ? 0.95 : 1.0
        return (books.reduce(0.0) { $0 + $1.price }) * multiplier
    }
}
