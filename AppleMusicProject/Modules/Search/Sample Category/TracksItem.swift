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
                .frame(width: 185, height: 185)
                .scaledToFit()
                .cornerRadius(5)
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
        .frame(width: 185, height: 235)
    }
}

struct TracksItem_Previews: PreviewProvider {
    static var previews: some View {
        TracksItem()
    }
}
