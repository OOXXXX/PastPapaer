//
//  2015D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _15D: View {
    var bbb: Land15

    var body: some View {
        VStack {
            Webview(url: (bbb.url))
        }
        .navigationBarTitle(Text(bbb.name), displayMode: .inline)
    }
}

struct _15D2: View {
    var bbb2: Land152

    var body: some View {
        VStack {
            Webview(url: (bbb2.url))
        }
        .navigationBarTitle(Text(bbb2.name), displayMode: .inline)
    }
}

struct _15D_Previews: PreviewProvider {
    static var previews: some View {
        _15D(bbb: _15Data[0])
    }
}
