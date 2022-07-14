//
//  ArticleDependencies.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

// MARK: - View Dependencies

protocol ArticleViewDependenciesProtocol {
    
}

struct ArticleViewDependencies: ArticleViewDependenciesProtocol {
    
}

// MARK: - Presenter Dependencies

protocol ArticlePresenterDependenciesProtocol {
    
}

struct ArticlePresenterDepenencies: ArticlePresenterDependenciesProtocol {
    
    init() {
    
    }
}

// MARK: - Interactor Dependencies

protocol ArticleInteractorDependenciesProtocol {
    var articleService : ArticleService { get set }
}

struct ArticleInteractorDependencies: ArticleInteractorDependenciesProtocol {
    
    var articleService: ArticleService
    
    init() {
        articleService = Resolver.shared.resolve(ArticleService.self)
    }
    
}
