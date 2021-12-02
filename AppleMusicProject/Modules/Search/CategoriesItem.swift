//
//  GenreItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 30.11.2021.
//

import SwiftUI

struct CategoriesItem: View {
    var image: String
    var title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(self.image)
                .resizable()
                .frame(maxWidth: 200, maxHeight: 140)
                .scaledToFit()
                .cornerRadius(5)
            Text(self.title)
                .frame(maxWidth: 150, maxHeight: 110, alignment: .bottomLeading)
                .offset(x: 15)
                .lineLimit(3)
                .font(.system(size: FontSize.tiny, weight: .black))
                .foregroundColor(.white)
        }
    }
}
