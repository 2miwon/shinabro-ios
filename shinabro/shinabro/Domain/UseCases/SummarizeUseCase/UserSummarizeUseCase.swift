//
//  UserSummarizeUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol UserSummarizeUseCase {
    func userSummarizeUseCase(by article: String, with answer: String) -> AnyPublisher<String, NetworkError>
}
