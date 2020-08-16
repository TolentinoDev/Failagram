//
//  ProfilePage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
        VStack {
            ProfileViewHeader()
            QGrid(exampleData, columns: 3, columnsInLandscape: nil, vSpacing: 0, hSpacing: 0, vPadding: 0, hPadding: 0, isScrollable: true, showScrollIndicators: false, content: {
                post in
                
                post.image.aspectRatio(contentMode: .fill).frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3, alignment: .center).clipped()
            })
        }.navigationBarItems(trailing: Button(action: self.moveToSettings, label: {
            Image(systemName: "slider.horizontal.3")}).accentColor(.black)).navigationBarTitle("Profile", displayMode: .inline)
            }
        }
        func moveToSettings() {
            
        }
    }

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
