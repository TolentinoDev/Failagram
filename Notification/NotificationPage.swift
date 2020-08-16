//
//  NotificationPage.swift
//  Failagram
//
//  Created by Ryan Tolentino on 7/22/20.
//  Copyright © 2020 Tolentinodev. All rights reserved.
//

import Foundation
import SwiftUI


struct NotificationView : View {
    
    //Takes away the line between each notification
    init() {
        UITableView.appearance().separatorColor = .clear
        
    }
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< 20 , content: {
                    i in
                    NotificationCell_Like().listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                })
            }.navigationBarTitle("Notifications", displayMode: .inline)
        }
    }
}


struct NotificationPage_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
