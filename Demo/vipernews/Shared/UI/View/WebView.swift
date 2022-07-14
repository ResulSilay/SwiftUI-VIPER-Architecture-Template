//
//  WebView.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import SwiftUI
import WebKit

#if !os(macOS)
struct WebView : UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
}
#else
struct WebView : NSViewRepresentable {
    
    var url: URL
    
    public let webView: WKWebView = WKWebView()
    
    public typealias NSViewType = WKWebView
    
    public func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    public func updateNSView(_ nsView: WKWebView, context: NSViewRepresentableContext<WebView>) {
        
    }
}
#endif
