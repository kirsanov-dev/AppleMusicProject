//
//  TabBar.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct TabBar: View {
    @State var current = 0
    @State var isEditLibrary = false
    @StateObject private var miniPlayer = MiniPlayerObject()
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView(selection: $current) {
                
                LibraryView()
                    .tag(0)
                    .tabItem { Image(systemName: "music.note.house.fill")
                        Text("Медиатека")
                    }
                
                RadioView()
                    .tag(1)
                    .tabItem { Image(systemName: "antenna.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                SearchView()
                    .tag(2)
                    .tabItem { Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            
            MiniPlayer()
                .if(!miniPlayer.isShowing) { view in
                    view.hidden()
                }
        })
            .environmentObject(miniPlayer)
    }
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: @autoclosure () -> Bool, transform: (Self) -> Content) -> some View {
        if condition() {
            transform(self)
        } else {
            self
        }
    }
}

class MiniPlayerObject: ObservableObject {
    @Published var isShowing: Bool = true
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}


