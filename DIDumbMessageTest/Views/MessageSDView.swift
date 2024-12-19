//
//  MessageDKView.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import SwiftUI
import Dependencies
// no need to import if you are not going to reconfigure the dependencies because we are already dealing diferenciating according to the environment inside the Dependency key
// import Dependencies

struct MessageSDView: View {
    @ObservedObject private var viewModel: MessageSDViewModel
    
    init(viewModel: MessageSDViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(viewModel.message)
                   .font(.title)
                   .padding()
        
        Button("Switch to Spanish") {
//                        withDependencies {
//                            $0.messageService = SpanishMessageService() // override to spanish message in this context
//                        } operation: {
//                            viewModel.loadMessage()
//                        }
            
                viewModel.changeLanguage(to: "es")
                    }
        
        Button("Switch to English") {
                        withDependencies {
                            $0.messageService = EnglishMessageService()
                        } operation: {
                            viewModel.loadMessage()
                        }
            viewModel.changeLanguage(to: "en")
                    }
        .padding()
    }
}

#Preview {
//    withDependencies {
//         // override the dependency with the mocked service
//         $0.messageService = MockMessageService()
//     } operation: {
//         MessageSDView(viewModel: MessageSDViewModel())
//     }
    
    MessageSDView(viewModel: MessageSDViewModel())
}
