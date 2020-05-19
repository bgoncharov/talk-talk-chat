//
//  UIImageView + Extension.swift
//  talktalk
//
//  Created by Boris on 5/18/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
