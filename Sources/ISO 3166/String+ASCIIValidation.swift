// String+ASCIIValidation.swift
// ISO 3166

extension String {
    /// Whether every UTF-8 code unit is an ASCII letter.
    var isASCIIAlphabetic: Bool {
        utf8.allSatisfy { byte in
            switch byte {
            case 65...90, 97...122:
                true
            default:
                false
            }
        }
    }

    /// Whether every UTF-8 code unit is an ASCII digit.
    var isASCIINumeric: Bool {
        utf8.allSatisfy { (48...57).contains($0) }
    }
}
