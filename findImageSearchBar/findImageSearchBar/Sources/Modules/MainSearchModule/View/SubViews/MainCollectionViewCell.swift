//
//  MainCollectionViewCell.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import UIKit

final class MainCollectionViewCell: UICollectionViewCell {
    //MARK: - Properties
    static let reuseId = "MainCollectionViewCell"

    //MARK: - Views
    var responceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemOrange
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        return imageView
    }()
      
    var activityIndicatorView: UIActivityIndicatorView = {
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatorView.color = .black
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.isHidden = true
        
        return activityIndicatorView
    }()
    
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        responceImageView.image = nil
    }
}

//MARK: - Private methods
extension MainCollectionViewCell {
    private func setupHierarchy() {
        [
            responceImageView,
            activityIndicatorView
        ].forEach { addSubview($0) }
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            responceImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            responceImageView.topAnchor.constraint(equalTo: topAnchor),
            responceImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            responceImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            activityIndicatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}

