//
//  WaitingChatsNavigation.swift
//  talktalk
//
//  Created by Boris on 6/2/20.
//  Copyright © 2020 Boris Goncharov. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}
