//
//  AuthService.swift
//  talktalk
//
//  Created by Boris on 5/27/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AuthService {
    
    private let auth = Auth.auth()
    
    func register(email: String?, password: String?, confirmPassword: String?, compleation: @escaping (Result<User, Error>) -> Void) {
        auth.createUser(withEmail: email!, password: password!) { (result, error) in
            guard let result = result else {
                compleation(.failure(error!))
                return
            }
            compleation(.success(result.user))
        }
    }
}
