//
//  SearchGridItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import SwiftUI

struct PlaylistGridItem: View {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: DataType = .playlist
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 45, height: 45)
                .scaledToFit()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Spacer()
                Text(self.title)
                    .font(.system(size: FontSize.small))
                Text("Плейлист - \(self.description)")
                    .font(.system(size: FontSize.small))
                    .foregroundColor(.gray)
                Spacer()
                Divider()
            }
            .padding(.leading, 12)
            Spacer()
            Button {} label: {
                Text(Image(systemName: "chevron.right"))
                    .frame(width: 20, height: 20, alignment: .center)
                    .font(.system(size: FontSize.tiny))
            }
            
        }
        .frame(height: 60)
    }
}

struct TrackGridItem: View {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: DataType = .track
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 45, height: 45)
                .scaledToFit()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Spacer()
                Text(self.title)
                    .font(.system(size: FontSize.small))
                Text("Песня - \(self.description)")
                    .font(.system(size: FontSize.small))
                    .foregroundColor(.gray)
                Spacer()
                Divider()
            }
            .padding(.leading, 12)
            Spacer()
            Button {} label: {
                Text(Image(systemName: "ellipsis"))
                    .frame(width: 20, height: 20, alignment: .center)
                    .font(.system(size: FontSize.tiny))
            }
        }
        .frame(height: 60)
    }
}
