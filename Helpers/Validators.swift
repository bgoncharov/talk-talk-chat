//
//  Validators.swift
//  talktalk
//
//  Created by Boris on 5/27/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

class Validators {
    
    static func isFilled(email: String?, password: String?, confirmedPassword: String?) -> Bool {
        guard let email = email,
            let password = password,
            let confirmedPassword = confirmedPassword,
            email != "",
            password != "",
            confirmedPassword != "" else {
                return false
                
        }
        return true
    }
    
    static func isSimleEmail(_ email: String) -> Bool {
        let emailRegEx = "^.+@.+\\..{2,}$"
        return check(text: email, regEx: emailRegEx)
    }
    
    private static func check(text: String, regEx: String) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regEx)
        return predicate.evaluate(with: text)
    }
}
