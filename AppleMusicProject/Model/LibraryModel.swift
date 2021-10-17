//
//  Model.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import Foundation
import SwiftUI

struct LibraryModel: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var icon: String
}

extension LibraryModel {
    
    static let data = [
        LibraryModel(title: "Плейлисты", icon: "music.note.list"),
        LibraryModel(title: "Артисты", icon: "music.mic"),
        LibraryModel(title: "Альбомы", icon: "doc.circle"),
        LibraryModel(title: "Песни", icon: "music.note"),
        LibraryModel(title: "Телешоу и фильмы", icon: "film"),
        LibraryModel(title: "Видеоклипы", icon: "video.bubble.left"),
        LibraryModel(title: "Жанры", icon: "tag"),
        LibraryModel(title: "Сборники", icon: "tray.full"),
        LibraryModel(title: "Авторы", icon: "person.circle"),
        LibraryModel(title: "Загружено", icon: "arrow.down.circle")
    ]
}
