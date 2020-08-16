//
//  ProfileViewHeader.swift
//  Failagram
//
//  Created by Ryan Tolentino on 8/5/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI


struct ProfileViewHeader: View {
    var body: some View{
        HStack {
            VStack {
                    Image("person0").resizable().frame(width: 80, height: 80, alignment: .center).cornerRadius(60)
                Text("TolentinoDev").font(.footnote)
            }
            Spacer()
            VStack{
                Text("Followers").font(.callout)
                Text("1200").font(.caption)
            }
            Spacer()
            VStack{
                Text("Following").font(.callout)
                Text("1200").font(.caption)
            }
            Spacer()
        }.padding()
    }
}

struct ProfileViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewHeader()
    }
}
