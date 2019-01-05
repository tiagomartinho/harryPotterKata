import XCTest
@testable import harryPotterKata

class AcceptanceTests: XCTestCase {

    func testOneCopyOfAnyBookCost() {
        calculate(I: 1, II: 0, III: 0, IV: 0, V: 0, price: 8.0)
        calculate(I: 0, II: 1, III: 0, IV: 0, V: 0, price: 8.0)
    }

    func testTwoDifferentBooksGetDiscountOnThoseTwoBooks() {
        calculate(I: 1, II: 1, III: 0, IV: 0, V: 0, price: 15.20)
        calculate(I: 2, II: 0, III: 0, IV: 0, V: 0, price: 16.0)
    }
}
