//
//  PlaylistSection.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct PlaylistSection: View {
    @State var items = SampleCategoryModel.data
    
    let rows: [GridItem] = [
        GridItem(.fixed(330))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Divider()
            LazyHGrid(rows: rows) {
                ForEach(items.filter( {$0.type == .playlist} ), id: \.id) { item in
                    PlaylistItem(image: item.image, title: item.title, category: item.category, description: item.description)
                }
            }
            .padding(.leading, 12)
            .padding(.trailing, 12)
            .padding(.bottom, 10)
            Divider()
        }
        .frame(height: 380)
    }
}

struct PlaylistSection_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistSection()
    }
}
