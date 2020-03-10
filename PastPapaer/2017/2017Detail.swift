//
//  2018Detail.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _17Detail: View {
    var sss: Land17

    var body: some View {
        VStack {
            Webview(url: (sss.url))
        }
        .navigationBarTitle(Text(sss.name), displayMode: .inline)
    }
}

struct _17Detail2: View {
    var sss2: Land172

    var body: some View {
        VStack {
            Webview(url: (sss2.url))
        }
        .navigationBarTitle(Text(sss2.name), displayMode: .inline)
    }
}

struct _17Detail_Previews: PreviewProvider {
    static var previews: some View {
        _17Detail(sss: _17Data[0])
    }
}
