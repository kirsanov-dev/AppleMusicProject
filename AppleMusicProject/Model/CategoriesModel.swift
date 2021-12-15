//
//  SearchModel.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 30.11.2021.
//

import Foundation
import SwiftUI

struct CategoriesModel: Identifiable {
    let id = UUID()
    var image: String
    var title: String
}

extension CategoriesModel {
    static let data = [
        CategoriesModel(image: "category-1", title: "Instrumental"),
        CategoriesModel(image: "category-2", title: "Live Concerts"),
        CategoriesModel(image: "category-3", title: "Violin"),
        CategoriesModel(image: "category-4", title: "Experimental"),
        CategoriesModel(image: "category-5", title: "Vinyl Special"),
        CategoriesModel(image: "category-6", title: "Flamenco"),
        CategoriesModel(image: "category-7", title: "Alternative"),
        CategoriesModel(image: "category-8", title: "Russian Folk"),
        CategoriesModel(image: "category-9", title: "Ambient"),
        CategoriesModel(image: "category-10", title: "Space"),
    ]
}
