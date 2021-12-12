//
//  CategoriesGridView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import SwiftUI

struct CategoriesView: View {
    
    @State var items = CategoriesModel.data
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, content: {
                Section(header:
                        Text("Поиск по категориям")
                            .font(.system(size: FontSize.medium, weight: .black, design: .default))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, Padding.regular)
                        
                ) {
                    ForEach(items, id: \.id) { item in
                        NavigationLink(destination: SampleCategoryView(), label: {
                            CategoriesItem(image: item.image, title: item.title)
                        })
                    }
                }
            })
        }
        .padding(.horizontal, Padding.regular)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
