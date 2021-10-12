//
//  TabBar.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct TabBar: View {
    @State var current = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection: $current) {
                
                // Таб Медиатека
                LibraryView()
                .tag(0)
                .tabItem { Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                }
                
                // Таб Радио
                NavigationView {
                    ScrollView {
                    }
                        .navigationBarTitle("Радио")
                }
                .tag(1)
                .tabItem { Image(systemName: "antenna.radiowaves.left.and.right")
                    Text("Радио")
                }
                
                // Таб Поиск
                NavigationView {
                    ScrollView {
                    }
                        .navigationBarTitle("Поиск")
                }
                .tag(2)
                .tabItem { Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            .accentColor(.red)
            
            // Мини-плеер над таббаром
            MiniPlayer()
        
        })
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
