//
//  SummarizeRepository.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol SummarizeRepository {
    func scoreSummary(by article: String, with answer: String) -> AnyPublisher<String, NetworkError>
}
