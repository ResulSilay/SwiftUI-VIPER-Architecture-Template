//
//  ArticleInteractor.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

final class ArticleInteractor: ArticleInteractorProtocol {
    
    private let dependencies: ArticleInteractorDependenciesProtocol
    
    init(dependencies: ArticleInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
    
    func getArticles(handler: @escaping (Result<Articles, Error, Bool>) -> Void) {
        self.dependencies.articleService.articles { result in
            switch result {
            case .success(let data):
                handler(.success(data))
            case .failure(let error):
                handler(.failure(error))
            case .loading(let isLoading):
                handler(.loading(isLoading))
            }
        }
    }
}
