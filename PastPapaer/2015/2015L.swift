//
//  2015L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _15L: View {
    var body: some View {
        
        NavigationView {
            List(_15Data) { bbb in
                NavigationLink(destination: _15D(bbb: bbb)) {
                    _15Row(bbb: bbb)
                }
            }
            .navigationBarTitle(Text("2015"))
        }
        
    }
}




struct  _15L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _15L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
