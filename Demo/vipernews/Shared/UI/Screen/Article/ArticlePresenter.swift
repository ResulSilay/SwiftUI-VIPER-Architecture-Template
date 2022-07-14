//
//  ArticlePresenter.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

import Foundation
import Combine

final class ArticlePresenter: ArticlePresenterProtocol, ObservableObject {
    
    @Published var articles: Articles? = nil
    @Published var isLoading: Bool = false
    
    private var dependencies: ArticlePresenterDependenciesProtocol
    private let interactor: ArticleInteractorProtocol
    private let router: ArticleRouterProtocol
    
    init(
        dependencies: ArticlePresenterDependenciesProtocol,
        interactor: ArticleInteractorProtocol,
        router: ArticleRouterProtocol
    ) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.router = router
    }
    
    func loadArticles() {
        DispatchQueue.main.async {
            self.interactor.getArticles { result in
                self.interactor.getArticles { result in
                    switch result {
                    case .success(let data):
                        Just(data)
                            .receive(on: RunLoop.main)
                            .assign(to: &self.$articles)
                    case .failure(let error):
                        print(error.localizedDescription)
                        //router.
                    case .loading(let isLoading):
                        Just(isLoading)
                            .receive(on: RunLoop.main)
                            .assign(to: &self.$isLoading)
                    }
                }
            }
        }
    }
    
    func goWebBrowser(url: String) -> WebBrowserView {
        return self.router.showWebBrowserView(url: url)
    }
}
