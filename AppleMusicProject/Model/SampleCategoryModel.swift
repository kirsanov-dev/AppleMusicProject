//
//  SampleCategoryModel.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 03.12.2021.
//

import Foundation
import SwiftUI

class SampleCategoryModelData: ObservableObject {
    @Published var data = SampleCategoryModel.data
}

struct SampleCategoryModel: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var artist: String? = nil
    var description: String
    var type: DataType
}

extension SampleCategoryModel {
    static let data = [
        SampleCategoryModel(image: "playlist-1", title: "Music For Coding", category: "Избранный плейлист", description: "Apple Music", type: .playlist),
        SampleCategoryModel(image: "playlist-2", title: "Relaxing Jazz", category: "Избранный плейлист", description: "Apple Music", type: .playlist),
        SampleCategoryModel(image: "playlist-3", title: "Live", category: "Избранный плейлист", description: "Apple Music", type: .playlist),
        SampleCategoryModel(image: "playlist-4", title: "Classic Rock", category: "Избранный плейлист", description: "Apple Music", type: .playlist),
        SampleCategoryModel(image: "track-1", title: "Say What You Say", artist: "Eminem", description: "The Eminem Show", type: .track),
        SampleCategoryModel(image: "track-2", title: "Bow Out", artist: "Mali Music", description: "The Transition of Mali", type: .track),
        SampleCategoryModel(image: "track-3", title: "Lateralus", artist: "Tool", description: "Lateralus", type: .track),
        SampleCategoryModel(image: "track-4", title: "Streets Of Philadelphia ", artist: "Bruce Sprengsteen", description: "Songs Under Cover", type: .track),
        SampleCategoryModel(image: "track-5", title: "People In Jazz", artist: "10CC", description: "Deceptive Bends", type: .track),
        SampleCategoryModel(image: "track-6", title: "Obsession", artist: "USO", description: "Obsession", type: .track)
    ]
}

