//
//  FactoryMessageViewModelTests.swift
//  DIDumbMessageTestTests
//
//  Created by Michelle  Santos on 18/12/24.
//

import XCTest
import Factory
@testable import DIDumbMessageTest

final class FactoryMessageViewModelTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // register MockMessageService on app container
        AppContainer.shared.messageService.register { MockMessageService() }
    }
    
    func testMessageIsLoadedCorrectly() {
        // Given: ViewModel created without params (LazyInjected)
        let viewModel = MessageFactoryViewModel()
        
        // When: message loaded
        let expectedMessage = "Helloo this is the mock service"
        
        // Then: check the message
        XCTAssertEqual(viewModel.message, expectedMessage)
    }
    
    override func tearDown() {
        super.tearDown()
        // you should reset the container to the original state
        AppContainer.shared.messageService.reset()
    }
}
