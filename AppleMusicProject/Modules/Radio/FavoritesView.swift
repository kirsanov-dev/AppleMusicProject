//
//  FavouritesView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct FavoritesView: View {
    @State var items = RadioModel.favoritesData
    
    let rows: [GridItem] = [
        GridItem(.fixed(340))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Divider()
            LazyHGrid(rows: rows) {
                ForEach(items, id: \.id) { item in
                    FavoritesItem(image: item.image, title: item.title, category: item.category, description: item.description)
                }
            }
            .padding(.leading, 16)
            .padding(.bottom, 16)
            Divider()
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
