//
//  MMessage.swift
//  talktalk
//
//  Created by Boris on 6/2/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import UIKit
import FirebaseFirestore

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
    
    init?(document: QueryDocumentSnapshot) {
        let data = document.data()
        guard let sendDate = data["created"] as? Timestamp else { return nil}
        guard let senderId = data["senderId"] as? String else { return nil}
        guard let senderUsername = data["senderUsername"] as? String else { return nil}
        guard let content = data["content"] as? String else { return nil}
        
        self.id = document.documentID
        self.sendDate = sendDate.dateValue()
        self.senderId = senderId
        self.senderUsername = senderUsername
        self.content = content
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
