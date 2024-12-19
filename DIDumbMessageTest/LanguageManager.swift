//
//  LanguageManager.swift
//  DIDumbMessageTest
//
//  Created by Michelle  Santos on 18/12/24.
//

import Foundation
import Dependencies

final class LanguageManager: ObservableObject {
    static let shared = LanguageManager()
    private init() { }
    
    var currentLanguage: String = "en"
}
