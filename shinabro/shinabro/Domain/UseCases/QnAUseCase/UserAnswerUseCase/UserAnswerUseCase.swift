//
//  UserAnswerUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol UserAnswerUseCase {
    func userAnswerUseCase(chat: [LLMMessage]) -> AnyPublisher<String, NetworkError>
}