//
//  CategoriesCollectionViewDelegate.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 16.12.2021.
//

import Foundation
import UIKit

extension CategoriesViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(SampleCategoryViewController(), animated: true)
    }
}
