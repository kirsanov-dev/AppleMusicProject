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
                .frame(width: Size.screenWidth20, height: Size.screenWidth20)
                .scaledToFit()
                .cornerRadius(CornerRadius.regular)
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
            .padding(.leading, Padding.regular)
            Spacer()
        }
        .frame(height: Size.screenWidth25)
    }
}
