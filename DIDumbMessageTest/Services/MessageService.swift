//
//  MessageService.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Foundation
import Factory

protocol MessageServiceProtocol {
    func getMessage() -> String
}

class EnglishMessageService: MessageServiceProtocol {
    func getMessage() -> String {
        return "hey how are you doing my frienda"
    }
}


struct SpanishMessageService: MessageServiceProtocol {
    func getMessage() -> String {
        return "Hola, bienvenido"
    }
}
