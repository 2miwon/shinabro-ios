//
//  MakeQnAUseCase.swift
//  shinabro
//
//  Created by 신민규 on 7/26/24.
//

import Foundation
import Combine

protocol MakeQnAUseCase {
    func makeQnAUseCase(by article: String, with number: Int) -> AnyPublisher<String, NetworkError>
}
