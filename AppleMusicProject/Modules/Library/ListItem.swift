//
//  ListItem.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 13.10.2021.
//

import SwiftUI

struct ListItem: View {
    var title: String
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack(spacing: Spacing.regular) {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: Size.screenWidth5, height: Size.screenWidth5)
                    .foregroundColor(.red)
                Text(self.title)
                    .font(.system(size: FontSize.regular))
                    .foregroundColor(Color.label)
            }
            .frame(height: Size.screenWidth10)
        }
    }
}
