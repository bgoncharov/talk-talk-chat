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
    case cannotGetUserInfo
    case cannotUnwrapToMuser
}

extension UserError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .notFilled:
            return NSLocalizedString("Fill all filds", comment: "")
        case .photoNotExist:
            return NSLocalizedString("Photo didn't setup", comment: "")
        case .cannotGetUserInfo:
            return NSLocalizedString("Can't load user info from Firebase", comment: "")
        case .cannotUnwrapToMuser:
            return NSLocalizedString("Can't convert MUser to User", comment: "")
        }
    }
}
