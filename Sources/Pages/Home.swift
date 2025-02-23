import Foundation
import Ignite

struct Home: StaticPage {
    let language: LanguageCategory
    
    var title: String {
        switch language {
        case .english: return "Home"
        case .portuguese: return "Início"
        }
    }

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            NavBar(language: language)
            
            Group {
                Text(welcomeText)
                    .font(.title1)
                    .style("font-weight: bold;")
                    .style("margin-bottom: 30px;")
                
                ProjectsSection(language: language)
            }
            .padding(40)
            
            Footer(language: language)
        }
        .style("background-color: #292929;")
    }
    
    private var welcomeText: String {
        switch language {
        case .english:
            return "Welcome to my portfolio!"
        case .portuguese:
            return "Bem-vindo ao meu portfólio!"
        }
    }
}

