//
//  EditLibraryView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 12.10.2021.
//

import SwiftUI

struct EditLibraryView: View {
    @State var isEditMode = EditMode.active
    @State var listItems = Model.data
    @State var selections: [String] = []
    @State var multiSelection = Set<UUID>()
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach(listItems, id: \.id) { item in
                ListItem(title: item.title, icon: item.icon, isSelected: self.selections.contains(item.title)){
                    if self.selections.contains(item.title) {
                        self.selections.removeAll(where: { item.title == $0 })
                    } else {
                        self.selections.append(item.title)
                    }
                }
            }
            .onMove(perform: move)
        }
        .environment(\.editMode, $isEditMode)
        .listStyle(PlainListStyle())
    }

    
    func move(from source: IndexSet, to destination: Int) {
        self.listItems.move(fromOffsets: source, toOffset: destination)
    }
}

struct EditLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        EditLibraryView()
    }
}
