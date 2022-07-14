//
//  ContentView.swift
//  Shared
//
//  Created by Resul Silay on 13.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ArticleRouter.composeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
