//
//  SearchBar.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 05.12.2021.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool
    @EnvironmentObject var miniPlayer: MiniPlayerObject
    
    var body: some View {
        HStack {
            HStack(spacing: Spacing.small) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: FontSize.regular))
                    .foregroundColor(Color(.systemGray3))
                    .padding(.leading, Padding.regular)
                TextField("Ваша Медиатека", text: $searchText)
                    .onTapGesture {
                        isSearching = true
                        miniPlayer.isShowing = false
                    }
                if isSearching {
                    Button(action: { searchText = "" }, label: {
                        Image(systemName: "xmark.circle.fill")
                    })
                        .foregroundColor(Color(.systemGray3))
                        .padding(.trailing, Padding.regular)
                }
            }
            .frame(height: Size.searchBarHeight)
            .background(Color.init(.systemGray6))
            .cornerRadius(CornerRadius.large)
            .padding(.top, Padding.small)
            .padding(.horizontal, Padding.regular)
            
            if isSearching {
                Button {
                    searchText = ""
                    isSearching = false
                    miniPlayer.isShowing = true
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                } label: {
                    Text("Отменить")
                }
                .padding(.trailing, Padding.regular)
            }
        }
        .transition(.move(edge: .trailing))
        .animation(.spring())
    }
}

