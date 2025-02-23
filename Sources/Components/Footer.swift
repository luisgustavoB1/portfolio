import Foundation
import Ignite

struct Footer: Component {
    let language: LanguageCategory
    
    func body(context: PublishingContext) -> [any PageElement] {
        Group {
            Group {
                Link(target: "https://github.com/yourusername") {
                    Image("/images/github-icon.png", description: "GitHub Profile")
                        .width(30)
                }
                .style("margin-right: 20px;")
                
                Link(target: "https://linkedin.com/in/yourusername") {
                    Image("/images/linkedin-icon.png", description: "LinkedIn Profile")
                        .width(30)
                }
            }
            .style("margin-bottom: 20px;")
            
            Text("© 2024 Luis Gustavo")
                .font(.body)
                .foregroundStyle(.gray)
        }
        .padding(20)
        .style("background-color: #1E1E1E;")
    }
} 