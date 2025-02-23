import Foundation
import Ignite

struct AboutPage: StaticPage {
    let language: LanguageCategory
    
    var title: String {
        switch language {
        case .english: return "About"
        case .portuguese: return "Sobre"
        }
    }

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            NavBar(language: language)
            
            Section {
                Text(title)
                    .font(.title1)
                    .style("font-weight: bold;")
                    .style("margin-bottom: 20px;")
                
                Group {
                    ProfileSection(language: language)
                }
            }
            .padding(40)
            
            Footer(language: language)
        }
        .style("background-color: #292929;")
    }
} 