//
//  DefaultUserAnswerUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

final class DefaultUserAnswerUseCase: UserAnswerUseCase {
    private let qnaRepository: QnARepository
    
    init(qnaRepository: QnARepository) {
        self.qnaRepository = qnaRepository
    }
    
    func userAnswerUseCase(chat: [LLMMessage]) -> AnyPublisher<String, NetworkError> {
        return qnaRepository.userAnswer(by: chat)
    }
}
