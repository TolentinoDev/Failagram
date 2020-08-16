//
//  LoginPage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 8/15/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI



struct LoginView : View {
    @State var email = String()
    @State var password = String()
    
    @State var isPresented : Bool = false
    
    var body : some View {
        VStack {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.purple, .black,.blue]), startPoint: .leading, endPoint: .trailing).frame(height: 200, alignment: .top).edgesIgnoringSafeArea(.top).shadow(radius: 15)
                Text("Failagram").foregroundColor(.white).bold().font(.largeTitle).padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            }
            TextField("Email", text: self.$email).padding()
            SecureField("Password", text: self.$password).padding()
            Button(action: self.submit, label: {Text("Login").bold().foregroundColor(.white).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)}).background(Color.blue).cornerRadius(10).padding()
            HStack{
                Text("Don't have an account?")
                Button(action: self.signUp, label: {
                    Text("Sign Up Now.")
                })
            }
            Spacer()
        }
    }
    func signUp() {
        self.isPresented.toggle()
        
    }
    func submit() {
        self.isPresented.toggle()
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
