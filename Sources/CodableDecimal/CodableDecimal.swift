import Foundation

/// Wrapper around Decimal that preserves exact value when encoded and decoded.
public struct CodableDecimal: Codable, Equatable, Hashable {
  public let value: Decimal
  
  public init(_ value: Decimal) {
    self.value = value
  }
  
  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let stringValue = try container.decode(String.self, forKey: .value)
    guard let value = Decimal(string: stringValue, locale: Self.locale) else {
      throw DecodingError.dataCorruptedError(
        forKey: .value,
        in: container,
        debugDescription: "Invalid String value."
      )
    }
    self.value = value
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    var value = self.value
    let string = NSDecimalString(&value, Self.locale)
    try container.encode(string, forKey: .value)
  }
  
  private enum CodingKeys: String, CodingKey { case value }
  
  // Using same Locale to encode and decode decimal.
  private static let locale = Locale(identifier: "en_US")
}
