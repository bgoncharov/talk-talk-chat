//
//  StorageService.swift
//  talktalk
//
//  Created by Boris on 5/31/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage

class StorageService {
    
    static let shared = StorageService()
    
    let storageRef = Storage.storage().reference()
    
    private var avatarRef: StorageReference {
        return storageRef.child("avatars")
    }
}
