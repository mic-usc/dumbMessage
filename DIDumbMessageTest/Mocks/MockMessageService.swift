//
//  MockMessageService.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Foundation

#if DEBUG
class MockMessageService: MessageServiceProtocol {
    func getMessage() -> String {
        return "Helloo this is the mock service"
    }
}
#endif
