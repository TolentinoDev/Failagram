//
//  SettingsPage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingsView: View  {

@State var isPresented : Bool = false
@State var image : Image?
@State var uiImage: UIImage?
@State var username: String = ""


var body: some View {
    VStack {
        HStack{
            if image != nil {
                self.image!.resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped().cornerRadius((40))
            } else {
                Image(systemName: "folder.circle.fill").aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped().background(Color.gray).cornerRadius((40))
            }
            Spacer()
            Button(action: self.choosePhoto, label:{Text("Choose your profile picture")})
            Spacer()
        }.padding()
        TextField("Username", text: self.$username, onEditingChanged: {
            changed in
        }, onCommit: {
            self.submitNewUsername()
            }).padding()
        Button(action: self.submit, label: {Text("Submit").bold().foregroundColor(.white).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)}).background(Color.blue).cornerRadius(10).padding()
        Spacer()
        Button(action: self.submit, label: {Text("Logout").bold().foregroundColor(.white).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)}).background(Color.red).cornerRadius(10).padding()
        
    }.sheet(isPresented: self.$isPresented, content: {
        ImagePicker(isShown: self.$isPresented, image: self.$image, uiImage: self.$uiImage)
    })
    }

    func submitNewUsername(){
        if username == "" {
            
        } else {
            
        }
    }
    func submit() {
        // work out logic later
    }
func choosePhoto() {
    self.isPresented.toggle()
    
}
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
