//
//  SearchView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 29.11.2021.
//

import SwiftUI

struct SearchView: View {
    
    @State private var isSearching = false
    @State private var searchText = ""
    @StateObject var model = SampleCategoryModelData()
    
    var body: some View {
        NavigationView{
            VStack {
                SearchBar(searchText: $searchText, isSearching: $isSearching)
                if !isSearching {
                    CategoriesCollectionView()
                        .navigationBarHidden(false)
                } else {
                    SearchGridView(model: model, searchText: $searchText)
                        .navigationBarHidden(true)
                }
            }
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}


