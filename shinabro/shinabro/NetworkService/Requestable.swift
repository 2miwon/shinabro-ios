//
//  Requestable.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation

protocol Requestable {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var data: Data? { get }
    var headers: [HTTPHeader]? { get }
}

extension Requestable {
    func makeURL() throws -> URL {
        let pathWithBaseURL = "\(baseURL)\(path)"
        guard let components = URLComponents(string: pathWithBaseURL) else {
            throw NetworkError.invalidURLComponents
        }
        
        guard let url = components.url else {
            throw NetworkError.invalidURLComponents
        }
        
        return url
    }
    
    func makeURLRequest(token: String) throws -> URLRequest {
        let url = try makeURL()
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.httpBody = data
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        headers?.forEach { urlRequest.setValue($0.value, forHTTPHeaderField: $0.field) }
        
        return urlRequest
    }
}
