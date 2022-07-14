//
//  ApiClient.swift
//  vipernews
//
//  Created by Resul Silay on 14.07.2022.
//

import Foundation

class ApiClient {
    
    static var shared = ApiClient()
    
    func fetch<T:Decodable>(
        url: String,
        httpMethod: HttpMethod,
        parameters: String? = nil,
        success: @escaping (T) -> Void,
        failure: @escaping (_ error: Error) -> Void,
        completed: @escaping () -> Void)
    {
        let _url : URL = URL(string: url)!
        
        var request = URLRequest(url: _url)
        request.httpMethod = httpMethod.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        
        if let data = parameters?.data(using: .utf8) {
            request.httpBody = data
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(T.self, from: data)
                    success(response)
                } catch let error {
                    failure(error)
                }
            }
            
            completed()
        }
        
        task.resume()
    }
}

enum HttpMethod : String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}
