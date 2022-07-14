//
//  ImageExtension.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import SwiftUI
import Kingfisher

extension KFImage {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width, height: geo.size.height)
                .clipped()
                .edgesIgnoringSafeArea(.all)
        }
    }
}
