//
//  DependencyManager.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation
import Swinject

@propertyWrapper
struct Inject<Component> {
    
    let wrappedValue: Component
    
    init() {
        self.wrappedValue = Resolver.shared.resolve(Component.self)
    }
}
