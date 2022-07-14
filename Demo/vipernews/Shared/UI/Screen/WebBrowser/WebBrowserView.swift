//
//  WebBrowserView.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import SwiftUI

struct WebBrowserView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var url: URL
    
    var body: some View {
        VStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("x")
            }
            
            WebView(url: url)
        }
        .buttonStyle(BorderlessButtonStyle())
        #if os(macOS)
        .frame(width: 900, height: 800)
        #endif
    }
}

struct WebBrowserView_Previews: PreviewProvider {
    static var previews: some View {
        WebBrowserView(url: URL(string: "https://www.google.com")!)
    }
}
