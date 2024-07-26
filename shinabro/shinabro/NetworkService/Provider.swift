//
//  Provider.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol Providable {
    func request<E: RequestResponsible>(with endpoint: E) -> AnyPublisher<E.Response, NetworkError>
}

struct Provider: Providable {
    private let jsonDecoder = JSONDecoder()
    private let urlSession: URLSessionable
    
    init(urlSession: URLSessionable) {
        self.urlSession = urlSession
    }
    
    func request<E: RequestResponsible>(with endpoint: E) -> AnyPublisher<E.Response, NetworkError> {
        let key = "PUT YOUR KEY HERE"
        do {
            let urlRequset = try endpoint.makeURLRequest(token: key)
            return urlSession.response(for: urlRequset)
                .tryMap { data, response in
                    guard response is HTTPURLResponse else {
                        throw NetworkError.invalidResponse
                    }
                    
                    return data
                }
                .decode(type: E.Response.self, decoder: jsonDecoder)
                .mapError ({ error in
                    if let error = error as? NetworkError { return error }
                    else { return NetworkError.unknown }
                })
                .eraseToAnyPublisher()
        } catch let error as NetworkError {
            return Fail(error: error).eraseToAnyPublisher()
        } catch {
            return Fail(error: NetworkError.unknown).eraseToAnyPublisher()
        }
    }
}
