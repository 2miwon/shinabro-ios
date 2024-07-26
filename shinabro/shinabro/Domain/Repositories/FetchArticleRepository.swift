//
//  FetchArticleRepository.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol FetchArticleRepository {
    func fetchArticle(count paragraph: Int, by: Category) -> AnyPublisher<String, NetworkError>
}
