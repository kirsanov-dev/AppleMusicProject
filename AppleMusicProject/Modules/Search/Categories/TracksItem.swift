//
//  TracksItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct TracksItem: View {
    var image: String = ""
    var title: String = ""
    var artist: String = ""
    var description: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(self.image)
                .resizable()
                .scaledToFit()
                .frame(width: Size.tracksImageHeight)
                .cornerRadius(CornerRadius.regular)
            Text(self.title)
                .font(.system(size: FontSize.tiny))
                .fontWeight(.bold)
                .lineLimit(2)
            Text(self.artist)
                .font(.system(size: FontSize.tiny))
                .lineLimit(2)
            Text(self.description)
                .font(.system(size: FontSize.tiny))
                .lineLimit(2)
                .foregroundColor(.gray)
        }
    }
}

struct TracksItem_Previews: PreviewProvider {
    static var previews: some View {
        TracksItem()
    }
}
