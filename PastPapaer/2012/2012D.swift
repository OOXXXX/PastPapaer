//
//  2012D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _12D: View {
    var fff: Land12

    var body: some View {
        VStack {
            Webview(url: (fff.url))
        }
        .navigationBarTitle(Text(fff.name), displayMode: .inline)
    }
}

struct _12D_Previews: PreviewProvider {
    static var previews: some View {
        _12D(fff: _12Data[0])
    }
}


