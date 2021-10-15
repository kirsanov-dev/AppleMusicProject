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
        HStack {
            Image(self.image)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.system(size: FontSize.regular, weight: .bold))
                Text(self.description)
                    .font(.system(size: FontSize.regular))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 12)
            Spacer()
        }
    }
}
