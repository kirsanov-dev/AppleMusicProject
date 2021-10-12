//
//  Model.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import Foundation
import SwiftUI

struct Model: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var icon: String
}

extension Model {
    
    static let data = [
        Model(title: "Плейлисты", icon: "music.note.list"),
        Model(title: "Артисты", icon: "music.mic"),
        Model(title: "Альбомы", icon: "doc.circle"),
        Model(title: "Песни", icon: "music.note"),
        Model(title: "Телешоу и фильмы", icon: "film"),
        Model(title: "Видеоклипы", icon: "video.bubble.left"),
        Model(title: "Жанры", icon: "tag"),
        Model(title: "Сборники", icon: "tray.full"),
        Model(title: "Авторы", icon: "person.circle"),
        Model(title: "Загружено", icon: "arrow.down.circle")
    ]
}
