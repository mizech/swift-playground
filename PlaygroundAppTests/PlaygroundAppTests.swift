import XCTest
import Testing
@testable import PlaygroundApp

@Test func testAdd() {
	XCTAssert(Calc.add(num1: 5, num2: 6) == 11)
	
	XCTAssert(Calc.subtract(num1: 11, num2: 6) == 5)
	
	XCTAssert(Calc.multiply(num1: 5, num2: 4) == 20)
	
	XCTAssert(Calc.divide(num1: 9, num2: 3) == 3)
}
