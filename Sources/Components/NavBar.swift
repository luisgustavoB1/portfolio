//
//  NavBar.swift
//  IgniteStarter
//
//  Created by Luis Gustavo on 08/12/24.
//

import Foundation
import Ignite

struct NavBar: Component {
    let language: LanguageCategory

    func body(context: PublishingContext) -> [any PageElement] {
        NavigationBar(logo: logo) {
            Link(target: Home(language: language)) {
                Text(language == .english ? "Home" : "Início")
                    .margin(.none)
                    .foregroundStyle(.white)
            }
            .margin(.trailing, 20)
            
            Link(target: AboutPage(language: language)) {
                Text(language == .english ? "About" : "Sobre")
                    .margin(.none)
                    .foregroundStyle(.white)
            }
            .margin(.trailing, 20)
            
            Dropdown("\(language.flag)") {
                for item in LanguageCategory.allCases {
                    Link(target: item.page) {
                        Text("\(item.flag) \(item.rawValue) Version")
                            .margin(.none)
                            .foregroundStyle(.black)
                    }
                }
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
    }

    private var logo: any InlineElement {
        Image("/images/b1tech_logo.png", description: "B1Tech Logo")
            .resizable()
            .width(40)
//        Text(name)
//            .fontWeight(.bold)
//            .margin(.none)
//            .font(.title4)
//            .foregroundStyle(.white)
    }

}
