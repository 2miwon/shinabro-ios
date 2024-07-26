//
//  NetworkError.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation

enum NetworkError: LocalizedError {
    case invalidURLComponents
    case invalidResponse
    case unknown
    
    var errorDescription: String? {
        switch self {
        case .invalidURLComponents: return "URLComponents Error - dreambuilder"
        case .invalidResponse: return "Response Type transfer Error"
        case .unknown: return "Unknown error occurred"
        }
    }
}
