//
//  CategoriesGridView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import SwiftUI

struct CategoriesGridView: View {
    
    @State var items = CategoriesModel.categories
    
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
                            .padding(.top, 10)
                        
                ) {
                    ForEach(items, id: \.id) { item in
                        NavigationLink(destination: SampleCategoryView(), label: {
                            CategoriesItem(image: item.image, title: item.title)
                        })
                    }
                }
            })
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
    }
}

struct CategoriesGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesGridView()
    }
}
