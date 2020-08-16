//
//  NotificationCell-Like.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/29/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct NotificationCell_Like : View {
    var body: some View{
        VStack{
            HStack(alignment : .top){
                Image("firstFail0").resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50, alignment: .center).cornerRadius(10)
                VStack {
                    Text("TolentinoDev liked your post!").font(.callout)
                    Text("One hour ago.").font(.caption)
                }
                Spacer()
            }.padding()
        }.background(Color.white).cornerRadius(5).shadow(radius: 10).padding()
    }
}



struct NotificationCell_Like_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell_Like()
    }
}
