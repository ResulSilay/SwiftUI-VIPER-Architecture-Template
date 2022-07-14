//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  Copyright © ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import SwiftUI

// MARK: - View Protocol

protocol ___VARIABLE_productName:identifier___ViewProtocol {
    
}

// MARK: - Presenter Protocol

protocol ___VARIABLE_productName:identifier___PresenterProtocol {
    var ___VARIABLE_productName:identifier___EntityName: String { get set }
    func load___VARIABLE_productName:identifier___()
}

// MARK: - Interactor Protocol

protocol ___VARIABLE_productName:identifier___InteractorProtocol {
    func get___VARIABLE_productName:identifier___Info() -> ___VARIABLE_productName:identifier___Entity
}

// MARK: - Router Protocol

protocol ___VARIABLE_productName:identifier___RouterProtocol {
    static func composeView() -> AnyView
}
