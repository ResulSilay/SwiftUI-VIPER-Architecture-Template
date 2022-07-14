//
//  ApiConst.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

enum Api : String {
    case BASE_URL = "https://api.spaceflightnewsapi.net"
}

enum ApiVersion : String {
    case v3 = "v3"
}

struct Services {
    static let articles = "\(Api.BASE_URL.rawValue)/\(ApiVersion.v3.rawValue)/articles"
}
