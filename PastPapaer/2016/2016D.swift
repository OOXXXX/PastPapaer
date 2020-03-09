//
//  2016D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _16D: View {
    var aaa: Land16

    var body: some View {
        VStack {
            Webview(url: (aaa.url))
        }
        .navigationBarTitle(Text(aaa.name), displayMode: .inline)
    }
}

struct _16D_Previews: PreviewProvider {
    static var previews: some View {
        _16D(aaa: _16Data[0])
    }
}
