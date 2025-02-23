import Foundation
import Ignite

struct ProjectsSection: Component {
    let language: LanguageCategory
    
    func body(context: PublishingContext) -> [any PageElement] {
        Group {
            Text(sectionTitle)
                .font(.title2)
                .style("font-weight: bold;")
                .style("margin-bottom: 20px;")
            
            Group {
                for project in projects {
                    Group {
                        ProjectCard(project: project)
                    }
                    .style("margin-bottom: 20px;")
                }
            }
        }
        .class("projects-section")
        .style("""
            .projects-section {
                max-width: 1200px;
                margin: 0 auto;
                text-align: center;
            }
        """)
    }
    
    private var sectionTitle: String {
        switch language {
        case .english: return "Featured Projects"
        case .portuguese: return "Projetos em Destaque"
        }
    }
    
    private var projects: [Project] {
        switch language {
        case .english:
            return [
                Project(
                    title: "Project 1", 
                    description: "Description in English", 
                    imageUrl: "/images/project1.jpg",
                    imageDescription: "Project 1 Screenshot"
                ),
                Project(
                    title: "Project 2", 
                    description: "Description in English", 
                    imageUrl: "/images/project2.jpg",
                    imageDescription: "Project 2 Screenshot"
                ),
                // Add more projects
            ]
        case .portuguese:
            return [
                Project(
                    title: "Projeto 1", 
                    description: "Descrição em Português", 
                    imageUrl: "/images/project1.jpg",
                    imageDescription: "Screenshot do Projeto 1"
                ),
                Project(
                    title: "Projeto 2", 
                    description: "Descrição em Português", 
                    imageUrl: "/images/project2.jpg",
                    imageDescription: "Screenshot do Projeto 2"
                ),
                // Add more projects
            ]
        }
    }
} 