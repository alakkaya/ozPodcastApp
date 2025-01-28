

import UIKit

struct ButtonTheme {
    let font: UIFont
    let textColor: UIColor
    let backgroundColor: UIColor
    let maximumLine: Int
}

extension ButtonTheme {
    static var defaultTheme: ButtonTheme {
        return ButtonTheme(
            font: ThemeFont.defaultTheme.titleFont,
            textColor: .white,
            backgroundColor: .forgottenPurple,
            maximumLine: 2
        )
    }
}
