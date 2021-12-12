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
                .frame(minWidth: Size.screenWidth45, minHeight: Size.screenWidth25)
                .scaledToFit()
                .cornerRadius(CornerRadius.medium)
            Text(self.title)
                .frame(minWidth: Size.screenWidth45, minHeight: Size.screenWidth25, alignment: .bottomLeading)
                .offset(x: Size.screenWidth3)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
                .font(.system(size: FontSize.tiny, weight: .black))
                .foregroundColor(.white)
        }
    }
}
