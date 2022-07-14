//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  Copyright © ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_productName:identifier___Router: ___VARIABLE_productName:identifier___RouterProtocol {
    
    static func composeView() -> AnyView {
        
        let router = ___VARIABLE_productName:identifier___Router()
        
        let interactorDependencies = ___VARIABLE_productName:identifier___InteractorDependencies()
        let presenterDependencies = ___VARIABLE_productName:identifier___PresenterDepenencies()
        let viewDependencies = ___VARIABLE_productName:identifier___ViewDependencies()
        
        let interactor = ___VARIABLE_productName:identifier___Interactor(dependencies: interactorDependencies)
        let presenter = ___VARIABLE_productName:identifier___Presenter(dependencies: presenterDependencies, interactor: interactor, router: router)
        let view = ___VARIABLE_productName:identifier___View(dependencies: viewDependencies, presenter: presenter)
        
        return AnyView(view)
    }
}
