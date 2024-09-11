import XCTest
@testable import CodableDecimal

final class CodableDecimalTest: XCTestCase {
  func testRoundTripJSON() throws {
    let decimalStrings = [
      "1.12", 
      "99.332",
      "999.94",
      "0.9998",
      "46.984765", 
      "123456789.1234",
      "-1.99"
    ]
    let decimals = decimalStrings.compactMap { Decimal(string: $0) }
    let codableDecimals = decimals.map { CodableDecimal($0) }
    
    let encoded = try JSONEncoder().encode(codableDecimals)
    
    let decodedDecimals = try JSONDecoder()
      .decode([CodableDecimal].self, from: encoded)
      .map { $0.value }
    
    XCTAssertEqual(decimals, decodedDecimals)
  }
}
