import XCTest
@testable import SharedCode

final class SharedCodeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SharedCode().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
