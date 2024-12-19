//
//  ContentView.swift
//  DIDumbMessageTest
//
//  Created by Michelle Santos on 18/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MessageFactoryView(viewModel: MessageFactoryViewModel())
//        MessageSDView(viewModel: MessageSDViewModel())
    }
}

#Preview {
    ContentView()
}
