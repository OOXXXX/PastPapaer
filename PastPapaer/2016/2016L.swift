//
//  2016L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _16L: View {
    var body: some View {
        
        NavigationView {
            List(_16Data) { aaa in
                NavigationLink(destination: _16D(aaa: aaa)) {
                    _16Row(aaa: aaa)
                }
            }
            .navigationBarTitle(Text("2016"))
        }
        
    }
}




struct  _16L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _16L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
