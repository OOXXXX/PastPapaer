//
//  2013L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _13L: View {
    var body: some View {
        
        NavigationView {
            List(_13Data) { ddd in
                NavigationLink(destination: _13D(ddd: ddd)) {
                    _13Row(ddd: ddd)
                }
            }
            .navigationBarTitle(Text("2013"))
        }
        
    }
}




struct  _13L_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
             _13L()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
