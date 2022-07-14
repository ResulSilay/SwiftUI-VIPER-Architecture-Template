//
//  ApiContainer.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Swinject

class ApiContainer {
    
    static var shared = ApiContainer()
    
    func buid() -> Container {
        
        let container = Container()
        
        container.register(ArticleService.self) { _  in
            return ArticleServiceImpl()
        }
        
        return container
    }
    
}
