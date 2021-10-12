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
        .accentColor(.red)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        self.listItems.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListItem: View {
    var title: String
    var icon: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack(spacing: 20) {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.red)
                Text(self.title)
                    .font(.system(size: 24))
            }
            .frame(height: 58)
        }
    }
}


struct EditLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        EditLibraryView()
    }
}
