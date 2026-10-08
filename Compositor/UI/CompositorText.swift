import Foundation
import SwiftUI

/// Helpers for labels that come from enum values or other dynamic strings.
enum CompositorText {
    static func key(_ value: String) -> LocalizedStringKey { LocalizedStringKey(value) }
    static func string(_ value: String) -> String { NSLocalizedString(value, comment: "") }
    static func format(_ value: String, _ arguments: CVarArg...) -> String {
        String(format: string(value), arguments: arguments)
    }
}
