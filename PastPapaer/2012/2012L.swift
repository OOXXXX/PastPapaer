//
//  2012L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _12L: View {
    var body: some View {
        
        NavigationView {
            List(_12Data) { fff in
                NavigationLink(destination: _12D(fff: fff)) {
                    _12Row(fff: fff)
                }
            }
            .navigationBarTitle(Text("2012"))
        }
        
    }
}




struct  _12L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _12L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
