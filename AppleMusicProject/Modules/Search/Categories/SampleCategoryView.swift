//
//  CategorySampleView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct SampleCategoryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            PlaylistView()
            TracksView()
                .navigationBarItems(trailing: Button {}
                                    label: {
                    Text(Image(systemName: "ellipsis"))
                        .frame(width: Size.categoryNavigationRoundButtonWidth, height: Size.categoryNavigationRoundButtonWidth, alignment: .center)
                        .background(
                            Color.systemBackground
                                .cornerRadius(Size.categoryNavigationRoundButtonWidth)
                                .shadow(color: .gray, radius: Shadow.radius, x: Shadow.offset, y: Shadow.offset)
                        )
                        .font(.system(size: FontSize.tiny))
                }
                .frame(alignment: .trailing)
                )
                .navigationTitle("Время кодить")
        }
    }
}

struct CategorySampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleCategoryView()
    }
}
