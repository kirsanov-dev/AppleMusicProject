//
//  SearchGridView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import Foundation
import SwiftUI

struct SearchGridView: View {
    
    @ObservedObject var model: SampleCategoryModelData
    @Binding var searchText: String
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false)  {
            LazyVGrid(
                columns: columns,
                content: {
                    ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .playlist }), id: \.id) { item in
                        SearchGridItem(image: item.image, title: item.title, description: item.description, type: item.type)
                    }
                    ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .track }), id: \.id) { item in
                        SearchGridItem(image: item.image, title: item.title, description: item.description, type: item.type)
                    }
                })
                .padding(.leading, 12)
                .padding(.trailing, 12)
        }
        .padding(.top, 12)
    }
}
