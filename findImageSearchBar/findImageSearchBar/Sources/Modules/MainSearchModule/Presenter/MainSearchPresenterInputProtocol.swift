//
//  MainSearchPresenterInputProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import Foundation

protocol MainSearchPresenterInputProtocol {
    func getDataFromNet(with query: String)
    func emptyDataResult()
    func pushToDetailInfoViewController(with currentViewModel: ViewModel, viewModels: [ViewModel])
}
