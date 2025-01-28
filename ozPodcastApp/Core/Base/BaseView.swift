import UIKit

class BaseView<T: UIViewController>: UIView,MainThreadRunner {
    var controller: T

    init(_ controller: T) {
        self.controller = controller
        super.init(frame: .zero)
        backgroundColor = appTheme.colorTheme.primaryFixedColor
        setupView()
    }
    
    var appTheme: AppTheme {
        ThemeManager.defaultTheme
    }
    
    static var currentTheme: AppTheme {
        ThemeManager.defaultTheme
    }
    
    func setupView() { }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
