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
}
