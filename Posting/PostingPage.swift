//
//  PostingPage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct PostingView : View{
    @State var description : String = ""
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    Image("firstFail0").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped().cornerRadius((5))
                    Spacer()
                    Button(action: self.choosePhoto, label:{Text("Choose Photo")})
                    Spacer()
                }.padding()
                VStack(alignment: .leading) {
                    Text("Description").font(.largeTitle).bold()
                    Text("Type your failure").font(.caption).foregroundColor(.gray)
                    
                    MultilineTextView(text: self.$description).cornerRadius(5).frame(height: 100, alignment: .leading)
                }.padding()
            }
        }
    }
    func choosePhoto() {
        
    }
}

struct PostingPage_Previews: PreviewProvider {
    static var previews: some View {
        PostingView()
    }
}
