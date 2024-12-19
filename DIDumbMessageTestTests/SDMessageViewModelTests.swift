//
//  SDMessageViewModelTests.swift
//  DIDumbMessageTestTests
//
//  Created by Michelle  Santos on 18/12/24.
//

import XCTest
import Dependencies
@testable import DIDumbMessageTest

final class SDMessageViewModelTests: XCTestCase {
    func testMessageIsLoadedCorrectly() {
        // Given: Dependency with a mock implementation
        let expectedMessage = "Helloo this is the mock service"
        
        // no need to reset becasue it's changed only in this context
        let viewModel = withDependencies {
            $0.messageService = MockMessageService()
        } operation: {
            MessageSDViewModel()
        }
        
        // When: message is loaded
        let actualMessage = viewModel.message
        
        // Then: check the message
        XCTAssertEqual(actualMessage, expectedMessage)
    }

}
