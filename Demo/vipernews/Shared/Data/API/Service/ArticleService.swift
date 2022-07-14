//
//  NewsService.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

protocol ArticleService {
    
    func articles(handler: @escaping (Result<Articles, Error, Bool>) -> Void)
}
