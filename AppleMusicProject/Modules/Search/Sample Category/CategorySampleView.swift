//
//  CategorySampleView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import SwiftUI

struct CategorySampleView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            PlaylistSection()
            TracksSection()
                .navigationBarItems(trailing: Button {}
                                    label: {
                    Text(Image(systemName: "ellipsis"))
                        .frame(width: 25, height: 25, alignment: .center)
                        .background(
                            Color.white
                                .cornerRadius(25)
                                .shadow(color: .gray, radius: 2, x: 0.5, y: 0.5)
                        )
                        .font(.system(size: FontSize.tiny))
                }
                                        .frame(maxWidth: UIScreen.main.bounds.size.width, alignment: .trailing)
                )
                .navigationTitle("Время кодить")
        }
    }
}

struct CategorySampleView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySampleView()
    }
}
