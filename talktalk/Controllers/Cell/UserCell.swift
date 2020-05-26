//
//  UserCell.swift
//  talktalk
//
//  Created by Boris on 5/25/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

class UserCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseId: String = "UserCell"
    
    func configure(with value: MChat) {
        print("123")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
