//
//  RouterProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import Foundation

protocol RouterProtocol {
    func initialViewController()
    func pushToDetailViewController(with currentViewModel: ViewModel, viewModels: [ViewModel])
    func openWkWebView(with urlString: String)
}
