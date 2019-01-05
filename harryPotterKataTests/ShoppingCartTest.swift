import XCTest
@testable import harryPotterKata

class ShoppingCartTest: XCTestCase {

    func testOneCopyOfAnyBookCost() {
        let unitPrice = 8.0
        let cart = ShoppingCart()
        cart.add(book: Book.first)

        let cost = cart.checkout()

        XCTAssertEqual(unitPrice, cost)
    }

    func testTwoCopiesOfTheSameBookDoNotHaveDiscount() {
        let unitPrice = 8.0
        let cart = ShoppingCart()
        cart.add(book: Book.first)
        cart.add(book: Book.first)

        let cost = cart.checkout()

        XCTAssertEqual(unitPrice * 2, cost)
    }

    func testTwoCopiesOfTheDifferentBooksHaveDiscount() {
        let cart = ShoppingCart()
        cart.add(book: Book.first)
        cart.add(book: Book.second)

        let cost = cart.checkout()

        XCTAssertEqual(15.20, cost)
    }
}
