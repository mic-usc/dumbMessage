//
//  MessageServiceKey.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Dependencies

struct MessageServiceKey: DependencyKey {
    // liveValue is a static property that returns a default instance of the dependency
    // possible solution to deal with the unavailability to override the depdendency outside the contexts
    static var liveValue: MessageServiceProtocol {
        switch LanguageManager.shared.currentLanguage {
        case "es":
            return SpanishMessageService()
        default:
            return EnglishMessageService()
        }
    }
    
//    static var liveValue: MessageServiceProtocol = EnglishMessageService()
    
    // we can use this to basically remove for each preview the withDependency { ... } block
    static var previewValue: MessageServiceProtocol = MockMessageService()
    
    // we can also use this to set a test value for the dependency
    static var testValue: MessageServiceProtocol = MockMessageService()
}

// The extension must be made to DependencyValues to expose a computed property for the dependency
extension DependencyValues {
    var messageService: MessageServiceProtocol {
        get { self[MessageServiceKey.self] }
        set { self[MessageServiceKey.self] = newValue }
    }
}
