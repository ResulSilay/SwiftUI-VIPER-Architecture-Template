//
//  Resolver.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Swinject

class Resolver {
    
    static let shared = Resolver()
    
    private var container = ApiContainer.shared.buid()

    func resolve<T>(_ type: T.Type) -> T {
        container.resolve(T.self)!
    }

    func setDependencyContainer(_ container: Container) {
        self.container = container
    }
}
