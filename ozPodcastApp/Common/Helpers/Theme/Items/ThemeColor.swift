
import UIKit

struct ThemeColor {
    let primaryColor: UIColor
    let primaryFixedColor: UIColor
    let secondaryColor: UIColor
    let secondaryFixedColor: UIColor
    let errorColor: UIColor
    let textColor: UIColor
}

extension ThemeColor {
    static var defaultTheme: ThemeColor {
        return ThemeColor(
            primaryColor: .primary,
            primaryFixedColor: .cloudBreak,
            secondaryColor: .darkGray,
            secondaryFixedColor: .forgottenPurple,
            errorColor: .red,
            textColor: .black
        )
    }
}
