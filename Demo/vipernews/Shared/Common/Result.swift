//
//  Result.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

enum Result<Success, Failure, Loading> where Failure: Error {
    case success(Success)
    case failure(Failure)
    case loading(Loading)
}
