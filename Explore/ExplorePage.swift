//
//  ExplorePage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI


struct ExploreView: View {
    
    var exampleDate = [PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable(),PostIdentifiable()]
    
    @State var isSearching: Bool = false
    @State var searchText = String()
    var body: some View {
        NavigationView {
        VStack {
            TextField("Search...", text: self.$searchText, onEditingChanged: {
                changed in
            }, onCommit: {
                self.search()
                }).padding()
            
            if isSearching == true {
                List {
                    ForEach(0..<3, content: {
                        i in PostCell(i:i).listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    })
                }
            } else {
                QGrid(self.exampleDate, columns: 3, columnsInLandscape: nil, vSpacing: 0, hSpacing: 0, vPadding: 0, hPadding: 0, isScrollable: true, showScrollIndicators: false, content: {
                    post in
                    
                    post.image.aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3, alignment: .center).clipped()
                })
            }
        }.navigationBarTitle("Explore", displayMode: .inline)
        }
    }
    func search() {
        if self.searchText == ""{
            self.isSearching = false
        } else {
            self.isSearching = true
        }
    }
}


struct PostIdentifiable : Identifiable{
    var id = UUID()
    //Edit Later
    var image = Image("firstFail0").resizable()
}

struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
