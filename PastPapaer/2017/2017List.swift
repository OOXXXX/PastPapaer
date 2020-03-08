//
//  2020List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _17List: View {
    var body: some View {
        
        NavigationView {
            List(_17Data) { sss in
                NavigationLink(destination: _17Detail(sss: sss)) {
                    _17Row(sss: sss)
                }
            }
            .navigationBarTitle(Text("2017"))
        }
        
    }
}




struct _17List_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            _17List()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
