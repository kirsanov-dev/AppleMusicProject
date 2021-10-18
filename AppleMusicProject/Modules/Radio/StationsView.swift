//
//  StationsView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct StationsView: View {
    @State var items = RadioModel.stationsData
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12)
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
                        ForEach(items, id: \.id) { item in
                            StationsItem(image: item.image, title: item.title, description: item.description)
                        }
                    }
                })
                .padding(.leading, 12)
                .padding(.trailing, 12)
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
