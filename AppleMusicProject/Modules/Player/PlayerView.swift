//
//  PlayerView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 01.12.2021.
//

import SwiftUI

struct PlayerView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme
    @State private var volumeLevel: Double  = 5.0
    @State private var currentTime: Double = 0.0
    var totalTime: Double = 4.5 * 60.0
    
    private func timeString(time: Double) -> String {
        let minute = Int(time) / 60 % 60
        let second = Int(time) % 60
        return String(format: "%02i:%02i", minute, second)
    }
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: colorScheme == .dark ? Color.darkSky : Color.purpleMyst, startPoint: .leading, endPoint: .topTrailing)
                            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("sting")
                    .resizable()
                    .scaledToFit()
                    .frame(width: Size.screenWidth65)
                    .cornerRadius(CornerRadius.medium)
                    .shadow(color: .gray, radius: Shadow.radius, x: Shadow.offset, y: Shadow.offset)
                    .padding(.bottom, Padding.medium)
                    .onTapGesture(count: 2) {
                        presentationMode.wrappedValue.dismiss()
                    }
                
                ZStack {
                    VStack(alignment: .leading) {
                        Text("Seven Days")
                            .font(.system(size: FontSize.large, weight: .bold))
                            .foregroundColor(Color.label)
                            .lineLimit(1)
                        Text("Sting")
                            .font(.system(size: FontSize.large, weight: .bold))
                            .foregroundColor(Color.label)
                            .opacity(Opacity.upperMin)
                    }
                    .frame(width: Size.screenWidth80, alignment: .leading)
                    
                    Button {} label: {
                        Text("\(Image(systemName: "ellipsis"))")
                            .foregroundColor(Color.label)
                            .opacity(Opacity.upperMin)
                            .frame(width: Size.playerRoundButtonWidth, height: Size.playerRoundButtonWidth, alignment: .center)
                            .background(
                                LinearGradient(gradient: colorScheme == .dark ? Color.darkSky : Color.purpleMyst, startPoint: .leading, endPoint: .topTrailing)
                                    .cornerRadius(CornerRadius.large)
                                    .shadow(color: .gray, radius: Shadow.radius, x: Shadow.offset, y: Shadow.offset)
                                )
                    }
                    .frame(width: Size.screenWidth80, alignment: .trailing)
                    
                }
                
                // time bar
                Slider(value: $currentTime, in: 0...totalTime)
                    .accentColor(Color.label).opacity(Opacity.upperMin)
                    .frame(width: Size.screenWidth80)
                    .padding(.horizontal, Padding.regular)
                    .padding(.top, Padding.regular)
                    .padding(.bottom, Padding.small)
                
                HStack {
                    Text("0:00")
                    Spacer()
                    Text("-\(timeString(time: totalTime - currentTime))")
                }
                .foregroundColor(Color.label).opacity(Opacity.upperMin)
                .frame(width: Size.screenWidth80, alignment: .leading)
                .padding(.bottom, Padding.medium)
                
                // back play forward
                HStack {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerControlButtonWidth, height: Size.playerControlButtonWidth)
                            .padding(.trailing, Padding.large)
                    }
                    
                    Button {} label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerControlButtonWidth, height: Size.playerControlButtonWidth)
                            .padding(.horizontal, Padding.large)
                    }
                    Button {} label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerControlButtonWidth, height: Size.playerControlButtonWidth)
                            .padding(.leading, Padding.large)
                    }
                }
                .foregroundColor(Color.label)
                .padding(.bottom, Padding.large)
                
                // volume bar
                HStack {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(Color.label).opacity(Opacity.upperMin)
                    
                    Slider(value: $volumeLevel, in: 0...10)
                        .accentColor(Color.label).opacity(Opacity.upperMin)
                        .padding(.horizontal, Padding.regular)

                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundColor(Color.label).opacity(Opacity.upperMin)
                }
                .frame(width: Size.screenWidth80)
                .padding(.vertical, Padding.large)
                
                // bottom controls
                HStack {
                    Button {} label: {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerBottomButtonWidth, height: Size.playerBottomButtonWidth)
                            .padding(.trailing, Padding.large)
                    }
                    Button {} label: {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerBottomButtonWidth, height: Size.playerBottomButtonWidth)
                            .padding(.horizontal, Padding.large)
                    }
                    Button {} label: {
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: Size.playerBottomButtonWidth, height: Size.playerBottomButtonWidth)
                            .padding(.leading, Padding.large)
                    }
                }
                .foregroundColor(Color.label).opacity(Opacity.upperMin)
                .padding(.top, Padding.large)
                
                Spacer()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
