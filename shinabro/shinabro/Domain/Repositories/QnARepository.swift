//
//  QnARepository.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol QnARepository {
    func makeQuestion(by article: String, with number: Int) -> AnyPublisher<String, NetworkError>
    func userAnswer(by chat: [LLMMessage]) -> AnyPublisher<String, NetworkError>
}
