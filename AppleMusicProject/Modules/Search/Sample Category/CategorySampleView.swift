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
                .navigationTitle("Время кодить")
        }
    }
}

struct CategorySampleView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySampleView()
    }
}
