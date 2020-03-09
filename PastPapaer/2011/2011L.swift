//
//  2011L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _11L: View {
    var body: some View {
        
        NavigationView {
            List(_11Data) { eee in
                NavigationLink(destination: _11D(eee: eee)) {
                    _11Row(eee: eee)
                }
            }
            .navigationBarTitle(Text("2011"))
        }
        
    }
}




struct  _11L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _11L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
