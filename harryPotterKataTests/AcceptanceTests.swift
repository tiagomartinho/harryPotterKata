import XCTest
@testable import harryPotterKata

class AcceptanceTests: XCTestCase {

    func testOneCopyOfAnyBookCost() {
        calculate(I: 1, II: 0, III: 0, IV: 0, V: 0, price: 8.0)
        calculate(I: 0, II: 0, III: 1, IV: 0, V: 0, price: 8.0)
    }

    func calculate(I: Int, II: Int, III: Int, IV: Int, V: Int, price: Double) {
        let cart = ShoppingCart()

        cart.add(book: Book.first)

        let cost = cart.checkout()
        XCTAssertEqual(price, cost)
    }
}
