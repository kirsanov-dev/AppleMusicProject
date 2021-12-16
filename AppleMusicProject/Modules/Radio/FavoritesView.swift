//
//  FavouritesView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct FavoritesView: View {
    @State var items = RadioModel.data
    
    let rows: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        Divider()
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: rows) {
                ForEach(items.filter( {$0.type == .favoriteStation} ), id: \.id) { item in
                    FavoritesItem(image: item.image, title: item.title, category: item.category, description: item.description)
                }
            }
            .padding(.horizontal, Padding.regular)
            .padding(.bottom, Padding.regular)
        }
        Divider()
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
