//
//  PlaylistItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct PlaylistItem: View {
    var image: String = ""
    var title: String = ""
    var category: String? = nil
    var artist: String? = nil
    var description: String = ""
    
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
                .clipped()
                .frame(width: 390)
                .scaledToFit()
                .cornerRadius(10)
        }
    }
}

struct PlaylistItem_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistItem()
    }
}
