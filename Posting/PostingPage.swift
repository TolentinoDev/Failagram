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
    @State var isPresented : Bool = false
    @State var image : Image?
    @State var uiImage: UIImage?
    
    var body: some View {
        ScrollView{
            VStack {
                HStack{
                    if image != nil {
                        self.image!.resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped().cornerRadius((5))
                    } else {
                        Image(systemName: "folder.circle.fill").aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped().background(Color.gray).cornerRadius((5))
                    }
                    Spacer()
                    Button(action: self.choosePhoto, label:{Text("Choose Photo")})
                    Spacer()
                }.padding()
                VStack(alignment: .leading) {
                    Text("Description").font(.largeTitle).bold()
                    Text("Type your failure").font(.caption).foregroundColor(.gray)
                    
                    MultilineTextView(text: self.$description).cornerRadius(5).frame(height: 100, alignment: .leading)
                }.padding()
                Spacer()
                Button(action: self.submit, label: {Text("Submit").bold().foregroundColor(.white).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)}).background(Color.blue).cornerRadius(10).padding()
            }
        }.sheet(isPresented: self.$isPresented, content: {
            ImagePicker(isShown: self.$isPresented, image: self.$image, uiImage: self.$uiImage)
        })
    }
    func choosePhoto() {
        self.isPresented.toggle()
        
    }
    func submit() {
        
        
    }
}

struct PostingPage_Previews: PreviewProvider {
    static var previews: some View {
        PostingView()
    }
}
