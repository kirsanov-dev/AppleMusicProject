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
            HStack(spacing: 16) {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: 22, height: 22)
                    .foregroundColor(.red)
                Text(self.title)
                    .font(.system(size: FontSize.regular))
                    .foregroundColor(.black)
            }
            .frame(height: 58)
        }
    }
}
