//
//  CollectionViewCellConfigurableProtocol.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 07.02.2023.
//

import UIKit

protocol CollectionViewCellConfigurableProtocol where Self: UICollectionViewCell {
    func configure(with viewModel: ViewModel)
}
