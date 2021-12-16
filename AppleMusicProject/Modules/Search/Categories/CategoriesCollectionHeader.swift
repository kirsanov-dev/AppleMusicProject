//
//  CategoriesCollectionHeader.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.12.2021.
//

import Foundation
import UIKit

class CategoriesCollectionHeader: UICollectionReusableView {
    
    static let identifier = "CategoriesCollectionHeader"
    
    // MARK: - Views
    
    private lazy var header: UILabel = {
        let header = UILabel()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.textAlignment = .left
        header.font = .systemFont(ofSize: FontSize.medium, weight: .bold)
        header.text = "Поиск по категориям"
        return header
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeirarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // MARK: - Setup
    
    private func setupHeirarchy() {
        addSubview(header)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: topAnchor),
            header.leadingAnchor.constraint(equalTo: leadingAnchor),
            header.widthAnchor.constraint(equalTo: widthAnchor),
            header.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }
}
