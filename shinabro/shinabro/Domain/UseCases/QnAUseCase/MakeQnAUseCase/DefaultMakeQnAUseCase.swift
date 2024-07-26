//
//  DefaultMakeQnAUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

final class DefaultMakeQnAUseCase: MakeQnAUseCase {
    private let qnaRepository: QnARepository
    
    init(qnaRepository: QnARepository) {
        self.qnaRepository = qnaRepository
    }
    
    func makeQnAUseCase(by article: String, with number: Int) -> AnyPublisher<String, NetworkError> {
        return qnaRepository.makeQuestion(by: article, with: number)
    }
}
