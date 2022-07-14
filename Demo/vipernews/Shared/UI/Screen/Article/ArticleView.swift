//
//  ArticleView.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022
//  Copyright © 2022 Resul Silay. All rights reserved.
//

import SwiftUI

struct ArticleView: View, ArticleViewProtocol {
    
    @State private var isWebView: Bool = false
    @State private var articleUrl: String? = nil
    
    @ObservedObject
    private var presenter: ArticlePresenter
    private let dependencies: ArticleViewDependenciesProtocol
    
    init(dependencies: ArticleViewDependenciesProtocol, presenter: ArticlePresenter) {
        self.dependencies = dependencies
        self.presenter = presenter
    }
    
    #if !os(macOS)
    var body: some View {
        NavigationView {
            main.navigationBarTitle("News")
        }
    }
    #else
    var body: some View {
        main.frame(minWidth: 1000, minHeight: 1200)
    }
    #endif
    
    var main: some View {
        VStack {
            if presenter.isLoading {
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
            else {
                ScrollView {
                    #if os(macOS)
                    Text("News").padding(.top, 8)
                    #endif
                    
                    if let articles = presenter.articles {
                        VStack {
                            ForEach(articles) { item in
                                ArticleItemView(articleEntity: item)
                                    .onTapGesture {
                                        self.articleUrl = item.url
                                    }
                            }
                        }
                        .sheet(item: self.$articleUrl, content: { url in
                            self.presenter.goWebBrowser(url: url)
                        })
                    }
                }
            }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .onAppear {
            presenter.loadArticles()
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRouter.composeView()
    }
}
