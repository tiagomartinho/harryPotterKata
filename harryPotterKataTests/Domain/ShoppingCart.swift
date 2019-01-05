class ShoppingCart {

    private var books = [Book]()

    func add(book: Book) {
        books.append(book)
    }

    func checkout() -> Double {
        var booksCount = [Book: Int]()
        for book in books {
            booksCount[book] = (booksCount[book] ?? 0) + 1
        }
        let hasDiscount = booksCount.keys.count > 1
        let multiplier = hasDiscount ? 0.95 : 1.0
        return (books.reduce(0.0) { $0 + $1.price }) * multiplier
    }
}
