//
//  DetailInfoViewController.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import UIKit

final class DetailInfoViewController: UIViewController {
    
    // MARK: - Views
    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Properties
    
    // MARK: - Initialize
    
    
    // MARK: - Life cycle
    override func loadView() {
        view = DetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

