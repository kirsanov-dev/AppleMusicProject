//
//  StationsView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct StationsView: View {
    @State var items = RadioModel.data
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: Spacing.regular)
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false)  {
            LazyVGrid(
                columns: columns,
                content: {
                    Section(header:
                                Text("Станции")
                                .font(.system(size: FontSize.large, weight: .bold, design: .default))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                    ) {
                        ForEach(items.filter( {$0.type == .station} ), id: \.id) { item in
                            StationsItem(image: item.image, title: item.title, description: item.description)
                        }
                    }
                })
                .padding(.leading, Padding.regular)
                .padding(.trailing, Padding.regular)
        }
        .padding(.top, Padding.small)
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
