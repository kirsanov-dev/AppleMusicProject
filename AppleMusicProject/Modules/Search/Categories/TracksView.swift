//
//  TracksSection.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct TracksView: View {
    @State var items = SampleCategoryModel.data
    
    let rows: [GridItem] = [
        GridItem(.fixed(Size.screenWidth60))
    ]
    
    var body: some View {
        VStack {
            Text("Настроение – драйв")
                .font(.system(size: FontSize.large, weight: .bold, design: .default))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, Padding.regular)
            
            ScrollView(.horizontal, showsIndicators: false)  {
                LazyHGrid(rows: rows) {
                    ForEach(items.filter( {$0.type == .track} ), id: \.id) { item in
                        TracksItem(image: item.image, title: item.title, artist: item.artist ?? "", description: item.description)
                    }
                }
                .padding(.trailing, Padding.regular)
                .padding(.leading, Padding.regular)
            }
            .frame(height: Size.tracksViewHeight)
        }
        .padding(.top, Padding.small)
    }
}

struct TracksView_Previews: PreviewProvider {
    static var previews: some View {
        TracksView()
    }
}
