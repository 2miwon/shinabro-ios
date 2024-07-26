//
//  DefaultFetchArticleUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

final class DefaultFetchArticleUseCase: FetchArticleUseCase {
    private let repository: FetchArticleRepository
    
    init(repository: FetchArticleRepository) {
        self.repository = repository
    }
    
    func fetchArticleUseCase(_ category: Category) -> AnyPublisher<String, NetworkError> {
        return repository.fetchArticle(count: 6, by: category)
    }
}
