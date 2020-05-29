//
//  AuthNavigationDelegate.swift
//  talktalk
//
//  Created by Boris on 5/29/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

protocol AuthNavigationDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
