//
//  DetailInfoModuleAssembly.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import UIKit

final class DetailInfoModuleAssembly {
    static func createDetailInfoViewController(with currentViewModel: ViewModel,
                                               viewModels: [ViewModel],
                                               router: RouterProtocol) -> UIViewController {
        
        let presenter = DetailInfoPresenter(currentViewModel: currentViewModel,
                                            viewModels: viewModels,
                                            router: router)
        
        let view = DetailInfoViewController(presenter: presenter)
        presenter.view = view
        
        return view
    }
}
