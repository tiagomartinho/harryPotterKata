import XCTest

func calculate(I: Int, II: Int, III: Int, IV: Int, V: Int, price: Double) {
    let cart = ShoppingCart()

    let books =  [(I, Book.first),
                  (II, Book.second),
                  (III, Book.third),
                  (IV, Book.fourth),
                  (V, Book.fifth),]
    for pair in books {
        for _ in 0..<pair.0 where pair.0 > 0 {
            cart.add(book: pair.1)
        }
    }

    let cost = cart.checkout()
    XCTAssertEqual(price, cost)
}
