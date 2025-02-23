//
//  LanguageCategory.swift
//  IgniteStarter
//
//  Created by Luis Gustavo on 08/12/24.
//

import Foundation
import Ignite

enum LanguageCategory: String, CaseIterable {
    case english = "English"
    case portuguese = "Portuguese"

    var flag: String {
        switch self {
            case .english: return "🇺🇸"
            case .portuguese: return "🇧🇷"
        }
    }

    var page: any StaticPage {
        switch self {
            case .english: return Home(language: .english)
            case .portuguese: return Home(language: .portuguese)
        }
    }
    
    var aboutPage: any StaticPage {
        switch self {
            case .english: return AboutPage(language: .english)
            case .portuguese: return AboutPage(language: .portuguese)
        }
    }
}
