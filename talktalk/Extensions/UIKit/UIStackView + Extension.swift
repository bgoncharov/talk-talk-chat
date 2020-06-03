//
//  UIStackView + Extension.swift
//  talktalk
//
//  Created by Boris on 5/19/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
