//
//  RadioModel.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import Foundation
import SwiftUI

struct RadioModel: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var description: String
}

extension RadioModel {
    
    static let favoritesData = [
        RadioModel(image: "radio-0", title: "The Matt Wilkinson Show", category: "Новый выпуск", description: "Новое шоу"),
        RadioModel(image: "radio-1", title: "The Estelle Show", category: "Избранная радиостанция", description: "Новый выпуск"),
        RadioModel(image: "radio-2", title: "Сountry Caffeine Radio", category: "Избранная радиостанция", description: "То, что слушают прямо сейчас"),
        RadioModel(image: "radio-3", title: "Record Dance Radio", category: "Избранная радиостанция", description: "Топ хиты"),
        RadioModel(image: "radio-4", title: "Cafe Jazz", category: "Избранная радиостанция", description: "То, что слушают прямо сейчас"),
        RadioModel(image: "radio-5", title: "Future Music", category: "Избранная радиостанция", description: "Трясем попой под хиты из будущего"),
        RadioModel(image: "radio-6", title: "The Agenda", category: "Избранная радиостанция", description: "Слушаем с умным видом"),
        RadioModel(image: "radio-7", title: "Crossroads", category: "Избранная радиостанция", description: "Топ хиты кантри")
    ]
    
    static let stationsData = [
        RadioModel(image: "radio-8", title: "Class 95", description: "The Best Mix of Music"),
        RadioModel(image: "radio-9", title: "FOX 101.9", description: "Melbourne's #1 Hits Music Station"),
        RadioModel(image: "radio-10", title: "The Beat 99.99", description: "The Beat of London"),
        RadioModel(image: "radio-11", title: "KINK Distortion", description: "No Alternative"),
        RadioModel(image: "radio-12", title: "Los 40 Classic", description: "Todos tus numeros uno"),
        RadioModel(image: "radio-13", title: "VRT Studio Brussel", description: "Life is Music")
    ]
}

