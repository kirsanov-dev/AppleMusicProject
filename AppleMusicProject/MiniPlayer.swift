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
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2.0, y: 2.0)
                    .padding(.leading, 25)
                
                Text("Seven Days")
                    .padding(.leading, 7)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "play.fill")
                        .padding(.trailing, 15)
                        .foregroundColor(.black)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                        .padding(.trailing, 25)
                        .foregroundColor(.black)
                })
            }
        }
        .frame(height: 80)
        .background(Color.init(.systemGray6))
        .offset(y: -50)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
