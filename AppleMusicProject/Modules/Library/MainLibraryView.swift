//
//  MainLibraryView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 13.10.2021.
//

import SwiftUI

struct MainLibraryView: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .font(.system(size: FontSize.large, weight: .bold, design: .default))
            Text("Здесь появится купленная Вами в iTunes Store музыка")
                .frame(width: Size.screenWidth60)
                .font(.system(size: FontSize.small))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
        }
    }
}

struct MainLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MainLibraryView()
    }
}
