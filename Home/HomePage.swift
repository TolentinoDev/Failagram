//
//  HomePage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View{
        List{
            ForEach(0..<3, content:{
                i in PostCell(i:i)
            })
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
