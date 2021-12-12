//
//  FavoritesItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct FavoritesItem: View {
    var image: String
    var title: String
    var category: String? = nil
    var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.category ?? "")
                .font(.system(size: FontSize.small))
                .foregroundColor(.gray)
            Text(self.title)
                .font(.system(size: FontSize.medium))
            Text(self.description)
                .font(.system(size: FontSize.regular))
                .foregroundColor(.gray)
            Image(self.image)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(maxWidth: Size.screenWidth90)
                .cornerRadius(CornerRadius.regular)
        }
        .frame(height: Size.screenHeight40)
    }
}
