import Foundation
import Ignite

struct ProfileSection: Component {
    let language: LanguageCategory
    
    func body(context: PublishingContext) -> [any PageElement] {
        Group {
            Image("/images/profile.jpg")
                .resizable()
                .width(200)
                .margin(.bottom, 20)
            
            Text(profileText)
                .font(.body)
                .margin(.bottom, 30)
        }
        .class("profile-section")
        .style("""
            .profile-section {
                max-width: 800px;
                margin: 0 auto;
                text-align: center;
            }
        """)
    }
    
    private var profileText: String {
        switch language {
        case .english:
            return "Hi! I'm Luis Gustavo, a Software Engineer passionate about iOS development..."
        case .portuguese:
            return "Olá! Eu sou Luis Gustavo, um Engenheiro de Software apaixonado por desenvolvimento iOS..."
        }
    }
} 