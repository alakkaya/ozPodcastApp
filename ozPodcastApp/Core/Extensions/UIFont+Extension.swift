//
//  UIFont+Extension.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 28.01.2025.
//

import UIKit
extension UIFont {
    
    
    /// Bolder font
    var bolded:UIFont {
        guard let descriptor = fontDescriptor.withSymbolicTraits(.traitBold) else {
            return self
        }
        return UIFont(descriptor: descriptor, size: pointSize )
    }
}
