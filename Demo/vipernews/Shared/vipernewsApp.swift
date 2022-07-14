//
//  vipernewsApp.swift
//  Shared
//
//  Created by Resul Silay on 13.07.2022.
//

import SwiftUI

@main
struct vipernewsApp: App {
    
    init() {
        Resolver.shared.setDependencyContainer(ApiContainer.shared.buid())
    }
    
    #if !os(macOS)
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
    
    #else
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
        .windowToolbarStyle(UnifiedCompactWindowToolbarStyle())
        .windowStyle(HiddenTitleBarWindowStyle())
    }
    #endif
}
