//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  Copyright © ___YEAR___ ___FULLUSERNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_productName:identifier___View: View, ___VARIABLE_productName:identifier___ViewProtocol {
    
    @ObservedObject
    private var presenter: ___VARIABLE_productName:identifier___Presenter
    private let dependencies: ___VARIABLE_productName:identifier___ViewDependenciesProtocol
    
    init(dependencies: ___VARIABLE_productName:identifier___ViewDependenciesProtocol, presenter: ___VARIABLE_productName:identifier___Presenter) {
        self.dependencies = dependencies
        self.presenter = presenter
    }
    
    var body: some View {
        VStack{
            Text(presenter.___VARIABLE_productName:identifier___EntityName)
        }
        .onAppear {
            presenter.load___VARIABLE_productName:identifier___()
        }
    }
}

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_productName:identifier___Router.composeView()
    }
}
