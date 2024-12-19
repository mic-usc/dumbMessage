//
//  MessageFactoryView.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import SwiftUI
import Factory

struct MessageFactoryView: View {
    @ObservedObject private var viewModel: MessageFactoryViewModel
    
    init(viewModel: MessageFactoryViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.message)
                .font(.title)
                .padding()
            
            Button("Switch to Spanish") {
                viewModel.changeLanguage(to: "es")
            }
            
            Button("Switch to English") {
                viewModel.changeLanguage(to: "en")
            }
        }
        .padding()
    }
}

#Preview {
//    Container.shared.messageService.register { MockMessageService() }
//    with factory 2.1 this is not necessary if you AutoRegistering
    AppContainer.shared.messageService.register { MockMessageService() }
    return MessageFactoryView(viewModel: MessageFactoryViewModel())
    
}
