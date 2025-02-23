import Foundation
import Ignite

struct ProjectCard: Component {
    let project: Project
    
    func body(context: PublishingContext) -> [any PageElement] {
        Group {
            Image(project.imageUrl, description: project.imageDescription)
                .resizable()
                .width(350)
                .style("margin-bottom: 10px;")
            
            Text(project.title)
                .font(.title3)
                .style("font-weight: bold;")
                .style("margin-bottom: 5px;")
            
            Text(project.description)
                .font(.body)
                .foregroundStyle(.gray)
        }
        .padding(20)
        .style("""
            background-color: #1E1E1E;
            border-radius: 12px;
        """)
    }
} 