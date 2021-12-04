//
//  SampleCategoryModel.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import Foundation
import SwiftUI

struct SampleCategoryModel: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var artist: String? = nil
    var description: String
}

extension SampleCategoryModel {
    
    static let playlistsData = [
        SampleCategoryModel(image: "playlist-1", title: "Music For Coding", category: "Избранный плейлист", description: "Apple Music"),
        SampleCategoryModel(image: "playlist-2", title: "Relaxing Jazz", category: "Избранный плейлист", description: "Apple Music"),
        SampleCategoryModel(image: "playlist-3", title: "Live", category: "Избранный плейлист", description: "Apple Music"),
        SampleCategoryModel(image: "playlist-4", title: "Classic Rock", category: "Избранный плейлист", description: "Apple Music")
    ]
    
    static let tracksData = [
        SampleCategoryModel(image: "track-1", title: "Say What You Say", artist: "Eminem", description: "The Eminem Show"),
        SampleCategoryModel(image: "track-2", title: "Bow Out", artist: "Mali Music", description: "The Transition of Mali"),
        SampleCategoryModel(image: "track-3", title: "Lateralus", artist: "Tool", description: "Lateralus"),
        SampleCategoryModel(image: "track-4", title: "Streets Of Philadelphia ", artist: "Bruce Sprengsteen", description: "Songs Under Cover"),
        SampleCategoryModel(image: "track-5", title: "People In Love", artist: "10CC", description: "Deceptive Bends"),
        SampleCategoryModel(image: "track-6", title: "Obsession", artist: "USO", description: "Obsession")
    ]
}

