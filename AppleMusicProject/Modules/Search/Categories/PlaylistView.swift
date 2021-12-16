//
//  PlaylistSection.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct PlaylistView: View {
    @State var items = SampleCategoryModel.data
    
    let rows: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        Divider()
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(items.filter( {$0.type == .playlist} ), id: \.id) { item in
                    PlaylistItem(image: item.image, title: item.title, category: item.category, description: item.description)
                }
            }
            .padding(.horizontal, Padding.regular)
            .padding(.bottom, Padding.regular)
        }
        Divider()
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
