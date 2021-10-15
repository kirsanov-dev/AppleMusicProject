//
//  MiniPlayer.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("sting")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2.0, y: 2.0)
                    .padding(.leading, 25)
                
                Text("Seven Days")
                    .padding(.leading, 5)
                    .font(.system(size: FontSize.regular))
                
                Spacer()
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
               
                Image(systemName: "forward.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .padding(.trailing, 37)
                    .padding(.leading, 20)
            }
            .accentColor(.black)
        }
        .frame(height: 80)
        .background(Color.init(.systemGray6))
        .offset(y: -49)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
