//
//  StationsItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct StationsItem: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 95, height: 95)
                .scaledToFit()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Spacer()
                Text(self.title)
                    .font(.system(size: FontSize.medium))
                Text(self.description)
                    .font(.system(size: FontSize.small))
                    .foregroundColor(.gray)
                Spacer()
                Divider()
            }
            .padding(.leading, 12)
            Spacer()
        }
        .frame(height: 115)
    }
}
