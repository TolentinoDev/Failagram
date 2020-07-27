//
//  PostCell.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct PostCell: View {
    var aspectRatio = 1.49987248151
    var i = 0
    var body: some View{
        VStack{
            Image("firstFail\(i)").resizable().frame(height: (UIScreen.main.bounds.width - 100) * CGFloat(aspectRatio), alignment: .center)
            HStack{
                Image("person\(i)").resizable().frame(width: 50, height: 50, alignment: .center).cornerRadius(25)
                VStack(alignment: .leading) {
                Text("TolentinoDev" + "\(i)")
                    Text("One Hour ago").font(.caption).foregroundColor(.gray)
                }
                Spacer()
            }.padding()
            Divider().padding(.horizontal)
            Text("This is a description of a failure of mine. Wow this is bad. ").lineLimit(nil).padding()
        }.background(Color.white).cornerRadius(20).shadow(radius: 10).padding()
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
