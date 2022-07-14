//
//  ArticleItemView.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import SwiftUI
import Kingfisher

struct ArticleItemView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var articleEntity: ArticleEntity
    
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    VStack (alignment: .leading) {
                        Text(articleEntity.title)
                            .bold()
                            .font(.system(size: 20))
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        Text(articleEntity.summary)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 4)
                            .padding(.bottom)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        HStack {
                            Text(articleEntity.newsSite)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                            Spacer()
                            Text(articleEntity.publishedAt)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                    }
                    .padding(.top, 50)
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .padding()
                .background(
                    ZStack{
                        KFImage(URL(string: articleEntity.imageURL))
                            .centerCropped()
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(
                                LinearGradient(gradient:
                                                colorScheme == .dark ? Gradient(colors: [
                                                    Color.black.opacity(0.9),
                                                    Color.black.opacity(0.9),
                                                    Color.black.opacity(0.9),
                                                    Color.black.opacity(0.7)
                                                ]): Gradient(colors: [
                                                    Color.white.opacity(0.9),
                                                    Color.white.opacity(0.9),
                                                    Color.white.opacity(0.9),
                                                    Color.white.opacity(0.7)
                                                ]), startPoint: .bottom, endPoint: .top)
                            )
                    }
                )
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y:5)
                #if !os(macOS)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                #else
                .padding(.top)
                .frame(width: 700)
                #endif
                .frame(maxWidth:.infinity)
            }
            .padding(.top, 30)
        }
    }
}

struct ArticleItemView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleItemView(articleEntity: ArticleMock.model())
    }
}
