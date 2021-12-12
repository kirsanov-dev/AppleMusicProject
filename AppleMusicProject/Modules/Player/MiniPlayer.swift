//
//  MiniPlayer.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct MiniPlayer: View {
    @State private var showingPlayerView = false
    
    var body: some View {
        VStack {
            HStack(spacing: Spacing.regular) {
                Image("sting")
                    .resizable()
                    .frame(width: Size.miniPlayerImageWidth, height: Size.miniPlayerImageWidth)
                    .cornerRadius(CornerRadius.medium)
                    .shadow(color: .gray, radius: Shadow.radius, x: Shadow.offset, y: Shadow.offset)
                    .padding(.leading, Padding.regular)
                    .onTapGesture(count: 2, perform: {
                        showingPlayerView.toggle()
                    })
                    .fullScreenCover(isPresented: $showingPlayerView, content: PlayerView.init)
                
                Text("Seven Days")
                    .padding(.leading, Padding.small)
                    .font(.system(size: FontSize.regular))
                
                Spacer()
                
                Button {} label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: Size.miniPlayerButtonWidth, height: Size.miniPlayerButtonWidth)
                        .foregroundColor(Color.label)
                }
                
                Button {} label: {
                    Image(systemName: "forward.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: Size.miniPlayerButtonWidth, height: Size.miniPlayerButtonWidth)
                        .foregroundColor(Color.label)
                        .padding(.trailing, Padding.medium * 2)
                        .padding(.leading, Padding.medium)
                }
    
            }
            .accentColor(Color.label)
        }
        .frame(height: Size.miniPlayerHeight)
        .background(Blur(style: .systemUltraThinMaterial))
        .offset(y: Size.miniPlayerOffset)
    }
}

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
