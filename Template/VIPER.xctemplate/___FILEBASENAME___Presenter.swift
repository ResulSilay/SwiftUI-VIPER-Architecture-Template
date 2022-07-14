//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  Copyright © ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import Combine

final class ___VARIABLE_productName:identifier___Presenter: ___VARIABLE_productName:identifier___PresenterProtocol, ObservableObject {
    
    @Published var ___VARIABLE_productName:identifier___EntityName: String = ""
    
    private var dependencies: ___VARIABLE_productName:identifier___PresenterDependenciesProtocol
    private let interactor: ___VARIABLE_productName:identifier___InteractorProtocol
    private let router: ___VARIABLE_productName:identifier___RouterProtocol
    
    init(
        dependencies: ___VARIABLE_productName:identifier___PresenterDependenciesProtocol,
        interactor: ___VARIABLE_productName:identifier___InteractorProtocol,
        router: ___VARIABLE_productName:identifier___RouterProtocol
    ) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.router = router
    }
    
    func load___VARIABLE_productName:identifier___() {
        ___VARIABLE_productName:identifier___EntityName = "Entity Name: \(self.interactor.get___VARIABLE_productName:identifier___Info().name)"
    }
}
