//
//  2014D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _14D: View {
    var ccc: Land14

    var body: some View {
        VStack {
            Webview(url: (ccc.url))
        }
        .navigationBarTitle(Text(ccc.name), displayMode: .inline)
    }
}

struct _14D2: View {
    var ccc2: Land142

    var body: some View {
        VStack {
            Webview(url: (ccc2.url))
        }
        .navigationBarTitle(Text(ccc2.name), displayMode: .inline)
    }
}




struct _14D_Previews: PreviewProvider {
    static var previews: some View {
        _14D(ccc: _14Data[0])
    }
}
