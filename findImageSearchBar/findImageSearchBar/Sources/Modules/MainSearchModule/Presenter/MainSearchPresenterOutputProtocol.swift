//
//  MainSearchPresenterOutputProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import Foundation

protocol MainSearchPresenterOutputProtocol: AnyObject {
    func configureView(with viewModel: [ViewModel])
    func configureAlert(with error: NetworkError)
    func didSelectImage(with currentViewModel: ViewModel)
}
