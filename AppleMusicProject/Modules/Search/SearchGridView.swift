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
    @State private var selected = 0
    
    var body: some View {
        
        Picker(selection: $selected, label: Text(""), content: {
            Text("Apple Music").tag(0)
            Text("Ваша Медиатека").tag(1)
        }).pickerStyle(SegmentedPickerStyle())
            .padding(.leading, Padding.regular)
            .padding(.trailing, Padding.regular)
        
        if selected == 0 {
            AppleMusicSearchView(model: model, searchText: searchText)
        } else {
            MediaLibrarySearchView()
        }
    }
}

struct AppleMusicSearchView: View {

    var model: SampleCategoryModelData
    var searchText: String
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: Spacing.regular)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false)  {
            LazyVGrid(
                columns: columns,
                content: {
                    if searchText.isEmpty {
                        ForEach(model.data, id: \.id) { item in
                            SearchGridItem(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                    } else {
                        ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .playlist }), id: \.id) { item in
                            SearchGridItem(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                        ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .track }), id: \.id) { item in
                            SearchGridItem(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                    }
                })
                .padding(.leading, Padding.regular)
                .padding(.trailing, Padding.regular)
        }
        .padding(.top, Padding.regular)
        Spacer()
    }
}

struct MediaLibrarySearchView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Ваша Медиатека пуста")
                .frame(width: Size.screenWidth75)
                .font(.system(size: FontSize.small))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}
