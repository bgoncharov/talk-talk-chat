//
//  GradientView.swift
//  talktalk
//
//  Created by Boris on 5/23/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
