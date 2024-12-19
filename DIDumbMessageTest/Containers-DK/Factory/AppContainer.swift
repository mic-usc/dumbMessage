//
//  AppContainer.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Factory

// We can also have other containers ex: AuthContainer, DataContainer
final class AppContainer: SharedContainer {
    static var shared: AppContainer = AppContainer()
    
    let manager = ContainerManager()
    
    var messageService: Factory<MessageServiceProtocol> {
        Factory(self) { EnglishMessageService() }
    }
}

// factory 2.1 has a way to also auto register dependencies depending on the context
extension AppContainer: AutoRegistering {
    func autoRegister() {
        messageService.context(.preview) { MockMessageService() }
        messageService.context(.test) { MockMessageService() }
    }
}
