//
//  2011D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _11D: View {
    var eee: Land11

    var body: some View {
        VStack {
            Webview(url: (eee.url))
        }
        .navigationBarTitle(Text(eee.name), displayMode: .inline)
    }
}

struct _11D2: View {
    var eee2: Land112

    var body: some View {
        VStack {
            Webview(url: (eee2.url))
        }
        .navigationBarTitle(Text(eee2.name), displayMode: .inline)
    }
}

struct _11D_Previews: PreviewProvider {
    static var previews: some View {
        _11D(eee: _11Data[0])
    }
}
