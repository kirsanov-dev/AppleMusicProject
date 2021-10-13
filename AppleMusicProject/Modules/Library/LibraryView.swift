//
//  LibraryView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct LibraryView: View {
    @State var showMainLibraryView = true
    
    var body: some View {
        NavigationView {
            if self.showMainLibraryView {
                MainLibraryView()
                    .navigationBarItems(trailing:
                                            Button(action: {
                        showMainLibraryView.toggle()
                    }, label: {
                        Text("Править")
                        })
                    )
                    .navigationBarTitle("Медиатека")
            } else {
                EditLibraryView()
                    .navigationBarItems(trailing:
                                            Button(action: {
                        showMainLibraryView.toggle()
                    }, label: {
                        Text("Готово")
                        })
                    )
                    .navigationBarTitle("Медиатека")
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
