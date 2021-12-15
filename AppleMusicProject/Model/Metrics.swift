//
//  Metrics.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 13.10.2021.
//

import Foundation
import SwiftUI

enum FontSize {
    static let tiny: CGFloat = 14
    static let small: CGFloat = 16
    static let regular: CGFloat = 18
    static let medium: CGFloat = 22
    static let large: CGFloat = 25
}

enum Padding {
    static let small: CGFloat = 5
    static let regular: CGFloat = 12
    static let medium: CGFloat = 20
    static let large: CGFloat = 30
    
}

enum Spacing {
    static let small: CGFloat = 5
    static let regular: CGFloat = 12
    static let medium: CGFloat = 20
}

enum CornerRadius {
    static let small: CGFloat = 2
    static let regular: CGFloat = 5
    static let medium: CGFloat = 10
    static let large: CGFloat = 15
}

enum Size {
    // MARK: - Screen Size
    static let screenWidth: CGFloat = UIScreen.main.bounds.size.width
    static let screenWidth3: CGFloat = screenWidth * 0.03
    static let screenWidth5: CGFloat = screenWidth * 0.05
    static let screenWidth10: CGFloat = screenWidth * 0.1
    static let screenWidth15: CGFloat = screenWidth * 0.15
    static let screenWidth20: CGFloat = screenWidth * 0.2
    static let screenWidth25: CGFloat = screenWidth * 0.25
    static let screenWidth30: CGFloat = screenWidth * 0.3
    static let screenWidth35: CGFloat = screenWidth * 0.35
    static let screenWidth40: CGFloat = screenWidth * 0.4
    static let screenWidth45: CGFloat = screenWidth * 0.45
    static let screenWidth50: CGFloat = screenWidth * 0.5
    static let screenWidth55: CGFloat = screenWidth * 0.55
    static let screenWidth60: CGFloat = screenWidth * 0.6
    static let screenWidth65: CGFloat = screenWidth * 0.65
    static let screenWidth70: CGFloat = screenWidth * 0.7
    static let screenWidth75: CGFloat = screenWidth * 0.75
    static let screenWidth80: CGFloat = screenWidth * 0.8
    static let screenWidth85: CGFloat = screenWidth * 0.85
    static let screenWidth90: CGFloat = screenWidth * 0.9
    static let screenWidth95: CGFloat = screenWidth * 0.95
    static let screenHeight: CGFloat = UIScreen.main.bounds.size.height
    static let screenHeight3: CGFloat = screenHeight * 0.03
    static let screenHeight5: CGFloat = screenHeight * 0.05
    static let screenHeight10: CGFloat = screenHeight * 0.1
    static let screenHeight15: CGFloat = screenHeight * 0.15
    static let screenHeight20: CGFloat = screenHeight * 0.2
    static let screenHeight25: CGFloat = screenHeight * 0.25
    static let screenHeight30: CGFloat = screenHeight * 0.3
    static let screenHeight35: CGFloat = screenHeight * 0.35
    static let screenHeight40: CGFloat = screenHeight * 0.4
    static let screenHeight45: CGFloat = screenHeight * 0.45
    static let screenHeight50: CGFloat = screenHeight * 0.5
    static let screenHeight55: CGFloat = screenHeight * 0.55
    static let screenHeight60: CGFloat = screenHeight * 0.6
    static let screenHeight65: CGFloat = screenHeight * 0.65
    static let screenHeight70: CGFloat = screenHeight * 0.7
    static let screenHeight75: CGFloat = screenHeight * 0.75
    static let screenHeight80: CGFloat = screenHeight * 0.8
    static let screenHeight85: CGFloat = screenHeight * 0.85
    static let screenHeight90: CGFloat = screenHeight * 0.9
    static let screenHeight95: CGFloat = screenHeight * 0.95
    
    // MARK: - Search Bar
    static let searchBarHeight: CGFloat = 40
    
    // MARK: - Mini Player
    static let miniPlayerHeight: CGFloat = 80
    static let miniPlayerOffset: CGFloat = -48
    static let miniPlayerButtonWidth: CGFloat = 22
    static let miniPlayerImageWidth: CGFloat = 60
    
    // MARK: - Player
    static let playerRoundButtonWidth: CGFloat = 30
    static let playerControlButtonWidth: CGFloat = 30
    static let playerBottomButtonWidth: CGFloat = 25
    
    // MARK: - Search Grid
    static let searchGridImageWidth: CGFloat = 45
    static let searchGridAttributeWidth: CGFloat = 20
    static let searchGridItemHeight: CGFloat = 60
    
    // MARK: - Search View
    static let searchViewImageWidth: CGFloat = 200
    static let searchViewImageHeight: CGFloat = 140
    static let searchViewTextWidth: CGFloat = 150
    static let searchViewTextHeight: CGFloat = 110
    static let searchViewTextOffset: CGFloat = 110
    
    // MARK: - Sample Category
    static let categoryNavigationRoundButtonWidth: CGFloat = 25
    static let playlistViewHeight: CGFloat = 330
    static let tracksViewHeight: CGFloat = 220
    static let tracksImageHeight: CGFloat = 180
}

enum Shadow {
    static let radius: CGFloat = 3.0
    static let offset: CGFloat = 1.0
}

enum Opacity {
    static let min: CGFloat = 0.95
    static let upperMin: CGFloat = 0.8
    static let average: CGFloat = 0.5
    static let max: CGFloat = 0.3
}


