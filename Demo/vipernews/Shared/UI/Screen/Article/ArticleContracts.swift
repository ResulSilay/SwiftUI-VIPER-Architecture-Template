//
//  ArticleContracts.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

import SwiftUI

// MARK: - View Protocol

protocol ArticleViewProtocol {
    
}

// MARK: - Presenter Protocol

protocol ArticlePresenterProtocol {
    var articles: Articles? { get set }
    func loadArticles()
    func goWebBrowser(url: String) -> WebBrowserView
}

// MARK: - Interactor Protoco l

protocol ArticleInteractorProtocol {
    func getArticles(handler: @escaping (Result<Articles, Error, Bool>) -> Void)
}

// MARK: - Router Protocol

protocol ArticleRouterProtocol {
    static func composeView() -> AnyView
    func showWebBrowserView(url: String) -> WebBrowserView
}
