//
//  CategoriesVCView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.12.2021.
//

import UIKit
import SwiftUI

struct CategoriesCollectionView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> CategoriesViewController {
        return CategoriesViewController()
    }
    
    func updateUIViewController(_ uiViewController: CategoriesViewController, context: Context) {
    }
}
