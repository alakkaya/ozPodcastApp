
import Foundation

protocol AppTheme {
    var colorTheme: ThemeColor { get }
    var fontTheme: ThemeFont { get }
    var textFieldTheme: TextFieldTheme { get }
    var buttonTheme: ButtonTheme { get }
}

struct LighTheme: AppTheme {
    let fontTheme: ThemeFont = .defaultTheme
    let colorTheme: ThemeColor = .defaultTheme
    let textFieldTheme: TextFieldTheme = .defaultTheme
    let buttonTheme: ButtonTheme = .defaultTheme
}
