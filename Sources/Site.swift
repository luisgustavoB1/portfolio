import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() {
        let site = PortfolioSite()

        do {
            try site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct PortfolioSite: Site {    
    // Site configuration
    var name = "Luis Gustavo"
    var description = "iOS Developer"
    
    // URL configuration
    #if DEBUG
    var url = URL(string: "http://127.0.0.1:8000")!  // Local development
    #else
    var url = URL(string: "https://luisgustavob1.github.io/portfolio")!  // GitHub Pages URL
    #endif
    
    // Content
    var homePage = Home(language: .english)
    var theme = MyTheme()
    
    // GitHub Pages configuration
    var deploymentTarget = DeploymentTarget.gitHub("luisgustavob1/portfolio")
}


