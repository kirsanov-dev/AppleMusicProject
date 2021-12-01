//
//  SearchView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 29.11.2021.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    
    @State var items = CategoryModel.categories
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                
                HStack(spacing: 8) {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                        .padding(.leading, 15)
                    TextField("Ваша Медиатека", text: $searchText)
                }
                .frame(height: 40)
                .background(Color.init(.systemGray6))
                .cornerRadius(15)
                .padding(.top, 5)
                .padding(.leading, 12)
                .padding(.trailing, 12)
                
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
                                CategoryItem(image: item.image, title: item.title)
                            }
                        }
                    })
                }
                .padding(.leading, 12)
                .padding(.trailing, 12)
                
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
