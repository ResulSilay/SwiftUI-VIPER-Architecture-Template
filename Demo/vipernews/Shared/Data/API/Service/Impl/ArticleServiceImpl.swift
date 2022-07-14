//
//  NewsArchiveImpl.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

class ArticleServiceImpl: ArticleService {
    
    func articles(
        handler: @escaping (Result<Articles, Error, Bool>) -> Void
    ){
        handler(.loading(true))
        
        ApiClient.shared.fetch(
            url: Services.articles,
            httpMethod: HttpMethod.GET,
            success: { Articles in
                handler(.success(Articles))
            }, failure: {error in
                handler(.failure(error))
            }, completed: {
                handler(.loading(false))
            }
        )
    }
}
