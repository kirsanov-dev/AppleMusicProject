//
//  MainRadioView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                FavoritesView()
                StationsView()
            }
                .navigationBarTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
