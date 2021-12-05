//
//  TracksSection.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct TracksSection: View {
    @State var items = SampleCategoryModel.data
    
    let rows: [GridItem] = [
        GridItem(.fixed(240))
    ]
    
    var body: some View {
        
        VStack {
            Text("Настроение – драйв")
                .font(.system(size: FontSize.large, weight: .bold, design: .default))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 12)
            
            ScrollView(.horizontal, showsIndicators: false)  {
                LazyHGrid(rows: rows) {
                    ForEach(items.filter( {$0.type == .track} ), id: \.id) { item in
                        TracksItem(image: item.image, title: item.title, artist: item.artist ?? "", description: item.description)
                    }
                }
                .padding(.trailing, 12)
                .padding(.leading, 12)
            }
        }
        .frame(height: 270)
    }
}

struct TracksSection_Previews: PreviewProvider {
    static var previews: some View {
        TracksSection()
    }
}
