//
//  MessageSDViewModel.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Foundation
import Dependencies

class MessageSDViewModel: ObservableObject {
    @Published var message: String = ""

    
//    @Dependency(\.messageService) var messageService
    
    init() {
        loadMessage()
    }
    
    func loadMessage() {
        // get the dependency dynamically
        message = DependencyValues().messageService.getMessage()
    }
    
    func changeLanguage(to language: String) {
        LanguageManager.shared.currentLanguage = language
        loadMessage()
     }
}
