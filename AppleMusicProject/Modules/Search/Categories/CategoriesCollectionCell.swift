//
//  CategoriesCollectionCell.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.12.2021.
//

import Foundation
import UIKit

class CategoriesCollectionCell: UICollectionViewCell {
    
    static let identifier = "CategoriesCollectionCell"
    
    // MARK: - Properties
    
    var data: CategoriesModel? {
        didSet {
            guard let data = data else { return }
            imageView.image = UIImage(named: data.image)
            titleLabel.text = data.title
        }
    }
    
    // MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = CornerRadius.regular
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textAlignment = .left
        title.numberOfLines = 2
        title.font = .systemFont(ofSize: FontSize.tiny, weight: .black)
        title.textColor = .white
        return title
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    private func setupHierarchy() {
        contentView.addSubview(imageView)
        imageView.addSubview(titleLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: Size.collectionCellTitleLeading),
            titleLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: Size.collectionCellTitleBottom)
        ])
    }
}
