import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head {
                // Default meta tags
                MetaTag(name: "viewport", content: "width=device-width, initial-scale=1")
                Title("\(page.title)\(context.site.titleSuffix)")
                
                // Custom styling
                Script(code: """
                    document.documentElement.style.cssText = `
                        body {
                            margin: 0;
                            padding: 0;
                            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
                            color: #FFFFFF;
                        }
                        
                        a {
                            text-decoration: none;
                            color: inherit;
                        }
                    `;
                """)
            }

            Body {
                page.body
            }
        }
    }
}
