//
//  SplashView.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import SwiftUI

struct SplashView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isContent : Bool = false
    
    var body: some View {
        if isContent {
            ContentView()
        }
        else {
            VStack {
                VStack {
                    Image("icon")
                        .renderingMode(.template)
                        .resizable()
                        .colorMultiply(colorScheme == .dark ? .white : .black)
                        .frame(width: 100, height: 100)
                }
                .scaleEffect()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        self.isContent = true
                    }
                }
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
