//
//  NetworkServiceProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchImageData(from request: URLRequest,
                        completion: @escaping (Result<ResultResponce, NetworkError>) -> Void)
}
