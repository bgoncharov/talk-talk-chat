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
    
    enum Point {
        case topLeading
        case leading
        case borromLeading
        case top
        case center
        case bottom
        case topTrailing
        case trailing
        case bottomTrailing
        
        var point: CGPoint {
            switch self {
                
            case .topLeading:
                return CGPoint(x: 0, y: 0)
            case .leading:
                return CGPoint(x: 0, y: 0.5)
            case .borromLeading:
                return CGPoint(x: 0, y: 1.0)
            case .top:
                return CGPoint(x: 0.5, y: 0)
            case .center:
                return CGPoint(x: 0.5, y: 0.5)
            case .bottom:
                return CGPoint(x: 0.5, y: 1.0)
            case .topTrailing:
                return CGPoint(x: 1.0, y: 0.0)
            case .trailing:
                return CGPoint(x: 1.0, y: 0.5)
            case .bottomTrailing:
                return CGPoint(x: 1.0, y: 1.0)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
