//
//  SearchGridItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import SwiftUI

struct SearchGridItem: View {
    
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: DataType
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: Size.searchGridImageWidth, height: Size.searchGridImageWidth)
                .scaledToFit()
                .cornerRadius(CornerRadius.regular)
            VStack(alignment: .leading) {
                Spacer()
                Text(self.title)
                    .font(.system(size: FontSize.small))
                Text("\((type == .playlist ? "Плейлист –" : "Песня –") + self.description)")
                    .font(.system(size: FontSize.small))
                    .foregroundColor(.gray)
                Spacer()
                Divider()
            }
            .padding(.leading, Padding.regular)
            Spacer()
            Button {} label: {
                Text(Image(systemName: (type == .playlist) ? "chevron.right" : "ellipsis"))
                    .frame(width: Size.searchGridAttributeWidth, height: Size.searchGridAttributeWidth, alignment: .center)
                    .font(.system(size: FontSize.tiny))
            }
            
        }
        .frame(height: Size.searchGridItemHeight)
    }
}
