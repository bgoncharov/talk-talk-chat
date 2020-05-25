//
//  MUser.swift
//  talktalk
//
//  Created by Boris on 5/24/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

struct MUser: Hashable, Decodable {
    var username: String
    var avatarStringURL: String
    var id: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: MUser, rhs: MUser) -> Bool {
        return lhs.id == rhs.id
    }
}
