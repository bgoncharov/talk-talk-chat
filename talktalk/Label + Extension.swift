//
//  Label + Extension.swift
//  talktalk
//
//  Created by Boris on 5/18/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String) {
        self.init()
        
        self.text = text
    }
}
