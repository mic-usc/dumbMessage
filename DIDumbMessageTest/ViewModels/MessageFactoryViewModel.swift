//
//  MessageViewModel.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Foundation
import Factory

class MessageFactoryViewModel: ObservableObject {
    @Published var message: String = ""
    
//    private let messageService: MessageServiceProtocol
//    @LazyInjected(\AppContainer.messageService) var messageService
    
//    init(messageService: MessageServiceProtocol) {
    init() {
//        self.messageService = messageService
        loadMessage()
    }
    
    private func loadMessage() {
        let messageService = AppContainer.shared.messageService()
        message = messageService.getMessage()
    }
    
    func changeLanguage(to language: String) {
        // override the current dependency
        switch language {
        case "es":
            AppContainer.shared.messageService.register { SpanishMessageService() }
        default:
            AppContainer.shared.messageService.register { EnglishMessageService() }
        }
        
        loadMessage() // reload the message with the new dependency
    }
}
