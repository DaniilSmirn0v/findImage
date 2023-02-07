//
//  DetailViewConfigurableProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 07.02.2023.
//

import UIKit

protocol DetailViewConfigurableProtocol where Self: UIView {
    func configureView(with viewModel: ViewModel)
}
