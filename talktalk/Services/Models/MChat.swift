//
//  MChat.swift
//  talktalk
//
//  Created by Boris on 5/24/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

struct MChat: Hashable, Decodable {
    var friendUsername: String
    var friendUserImageString: String
    var lastMessageContent: String
    var friendId: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(friendId)
    }
    
    static func == (lhs: MChat, rhs: MChat) -> Bool {
        return lhs.friendId == rhs.friendId
    }
}
