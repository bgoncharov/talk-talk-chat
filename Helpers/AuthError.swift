//
//  AuthError.swift
//  talktalk
//
//  Created by Boris on 5/27/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

enum AuthError {
    case notFilled
    case invalidEmail
    case passwordsNotMatched
    case unknowError
    case serverError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .notFilled:
            return NSLocalizedString("Fill all filds", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Put valid email", comment: "")
        case .passwordsNotMatched:
            return NSLocalizedString("Put valid email", comment: "")
        case .unknowError:
            return NSLocalizedString("Unknown error", comment: "")
        case .serverError:
            return NSLocalizedString("Server error", comment: "")
        }
    }
}
