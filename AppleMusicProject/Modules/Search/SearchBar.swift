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
    
    var body: some View {
        HStack {
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 18))
                    .foregroundColor(Color(.systemGray3))
                    .padding(.leading, 12)
                TextField("Ваша Медиатека", text: $searchText)
                    .onTapGesture {
                        isSearching = true
                    }
                if isSearching {
                    Button(action: { searchText = "" }, label: {
                        Image(systemName: "xmark.circle.fill")
                    })
                        .foregroundColor(Color(.systemGray3))
                        .padding(.trailing, 12)
                }
            }
            .frame(height: 40)
            .background(Color.init(.systemGray6))
            .cornerRadius(15)
            .padding(.top, 5)
            .padding(.leading, 12)
            .padding(.trailing, 12)
            
            if isSearching {
                Button {
                    searchText = ""
                    isSearching = false
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                } label: {
                    Text("Отменить")
                }
                .padding(.trailing, 12)
            }
        }
        .transition(.move(edge: .trailing))
        .animation(.spring())
    }
}

