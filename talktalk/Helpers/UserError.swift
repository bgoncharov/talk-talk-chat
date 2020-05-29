//
//  UserError.swift
//  talktalk
//
//  Created by Boris on 5/29/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

enum UserError {
    case notFilled
    case photoNotExist
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .notFilled:
            return NSLocalizedString("Fill all filds", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Photo didn't setup", comment: "")
        }
    }
}
