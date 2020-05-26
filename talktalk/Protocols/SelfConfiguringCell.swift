//
//  SelfCongigurationCell.swift
//  talktalk
//
//  Created by Boris on 5/23/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
