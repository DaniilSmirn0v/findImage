//
//  DetailView.swift
//  findImageSearchBar
//
//  Created by Даниил Смирнов on 06.02.2023.
//

import UIKit

final class DetailView: UIView {
    // MARK: - Views
    var responceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemOrange
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        return imageView
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    var detailButton: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "safari")
        button.setImage(image, for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    var nextButton: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "arrowshape.right")
        button.setImage(image, for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    var previousButton: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "arrowshape.left")
        button.setImage(image, for: .normal)
        button.tintColor = .systemGray
        return button
    }()
    
    // MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private methods
extension DetailView {
    private func setupHierarchy() {
        [
        responceImageView,
        stackView
        ].forEach { addSubview($0) }
        
        [
        previousButton,
        detailButton,
        nextButton
        ].forEach { stackView.addArrangedSubview($0) }
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            responceImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            responceImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            responceImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -8),
            responceImageView.heightAnchor.constraint(equalToConstant: 400),
            
            stackView.leadingAnchor.constraint(equalTo: responceImageView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: responceImageView.bottomAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: responceImageView.trailingAnchor)
        ])
    }
}
