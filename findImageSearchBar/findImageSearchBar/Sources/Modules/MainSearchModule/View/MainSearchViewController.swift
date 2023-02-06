//
//  MainSearchViewController.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import UIKit

class MainSearchViewController: UIViewController {
    
    // MARK: - Views
    private var mainView: MainView? {
        guard isViewLoaded else { return nil }
        return view as? MainView
    }
    private var searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search start here..."
        
        return searchController
    }()
    // MARK: - Properties
    
    
    // MARK: - Initialize
    
    
    
    // MARK: - Life cycle
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Private methods
    private func setupView() {
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        definesPresentationContext = true
        mainView?.collectionView.delegate = self
        mainView?.collectionView.dataSource = self
    }
    
}

extension MainSearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        // TODO: -
    }
}

// MARK: - UICollectionViewDataSource
extension MainSearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MainCollectionViewCell.reuseId,
            for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        
        return cell
    }
    
    
}

// MARK: - UICollectionViewDelegate
extension MainSearchViewController: UICollectionViewDelegate {
    
}
