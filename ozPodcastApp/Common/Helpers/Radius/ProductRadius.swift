import UIKit

enum ProductRadius: Int {
    case small = 4
    case medium = 8
    case large = 12
    
    var size: CGFloat {
        CGFloat(self.rawValue)
    }
}
