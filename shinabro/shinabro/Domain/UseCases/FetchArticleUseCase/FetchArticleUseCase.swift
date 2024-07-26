//
//  FetchArticleUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol FetchArticleUseCase {
    func fetchArticleUseCase(_ category: Category) -> AnyPublisher<String, NetworkError>
}
