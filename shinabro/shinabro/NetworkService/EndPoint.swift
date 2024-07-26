//
//  EndPoint.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation

typealias RequestResponsible = Responsible & Requestable

final class EndPoint<R: Decodable>: RequestResponsible {
    typealias Response = R
    
    var baseURL: String
    var path: String
    var method: HTTPMethod
    var data: Data?
    var headers: [HTTPHeader]?
    
    init(baseURL: String, path: String, method: HTTPMethod, data: Data? = nil, headers: [HTTPHeader]? = nil) {
        self.baseURL = baseURL
        self.path = path
        self.method = method
        self.data = data
        self.headers = headers
    }
}
