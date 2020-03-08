//
//  2020List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _18List: View {
    var body: some View {
        
        NavigationView {
            List(_18Data) { xxx in
                NavigationLink(destination: _18Detail(xxx: xxx)) {
                    _18Row(xxx: xxx)
                }
            }
            .navigationBarTitle(Text("2018"))
        }
        
    }
}




struct _18List_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            _18List()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
