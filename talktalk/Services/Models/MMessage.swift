//
//  MMessage.swift
//  talktalk
//
//  Created by Boris on 6/2/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit

struct MMessage: Hashable {
    let content: String
    let senderId: String
    let senderUsername: String
    var sendDate: Date
    let id: String?
    
    init(user: MUser, content: String) {
        self.content = content
        senderId = user.id
        senderUsername = user.username
        sendDate = Date()
        id = nil
    }
    
    var representation: [String: Any] {
        var rep: [String: Any] = [
            "created": sendDate,
            "senderId": senderId,
            "senderName": senderUsername,
            "content": content
        ]
        return rep
    }
}
