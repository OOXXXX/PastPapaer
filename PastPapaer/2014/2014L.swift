//
//  2014L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _14L: View {
    var body: some View {
        
        NavigationView {
            List(_14Data) { ccc in
                NavigationLink(destination: _14D(ccc: ccc)) {
                    _14Row(ccc: ccc)
                }
            }
            .navigationBarTitle(Text("2014"))
        }
        
    }
}




struct  _14L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _14L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
