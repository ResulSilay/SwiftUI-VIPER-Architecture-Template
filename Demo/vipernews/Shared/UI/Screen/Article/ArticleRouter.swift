//
//  ArticleRouter.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

import SwiftUI

struct ArticleRouter: ArticleRouterProtocol {
    
    static func composeView() -> AnyView {
        
        let router = ArticleRouter()
        
        let interactorDependencies = ArticleInteractorDependencies()
        let presenterDependencies = ArticlePresenterDepenencies()
        let viewDependencies = ArticleViewDependencies()
        
        let interactor = ArticleInteractor(dependencies: interactorDependencies)
        let presenter = ArticlePresenter(dependencies: presenterDependencies, interactor: interactor, router: router)
        let view = ArticleView(dependencies: viewDependencies, presenter: presenter)
        
        return AnyView(view)
    }
    
    func showWebBrowserView(url: String) -> WebBrowserView {
        return WebBrowserView(url: URL(string: url)!)
    }
}
