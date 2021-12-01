//
//  SearchModel.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 30.11.2021.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
}

extension CategoryModel {
    
    static let categories = [
        CategoryModel(image: "category-1", title: "Bass Instrumental"),
        CategoryModel(image: "category-2", title: "Russian Folk"),
        CategoryModel(image: "category-3", title: "Space"),
        CategoryModel(image: "category-4", title: "Ambient"),
        CategoryModel(image: "category-5", title: "Live Concerts"),
        CategoryModel(image: "category-6", title: "Classical"),
        CategoryModel(image: "category-7", title: "Alternative"),
        CategoryModel(image: "category-8", title: "Vinyl Special"),
        CategoryModel(image: "category-9", title: "Flamenco Guitar"),
        CategoryModel(image: "category-10", title: "Djent"),
    ]
    
}
