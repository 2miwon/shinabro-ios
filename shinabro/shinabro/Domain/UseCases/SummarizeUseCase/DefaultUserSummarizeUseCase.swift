//
//  DefaultUserSummarizeUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

final class DefaultUserSummarizeUseCase: UserSummarizeUseCase {
    private let summarizeRepository: SummarizeRepository
    
    init(summarizeRepository: SummarizeRepository) {
        self.summarizeRepository = summarizeRepository
    }
    
    func userSummarizeUseCase(by article: String, with answer: String) -> AnyPublisher<String, NetworkError> {
        return summarizeRepository.scoreSummary(by: article, with: answer)
    }
}
