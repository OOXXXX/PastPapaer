//
//  2018Detail.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _18Detail: View {
    var xxx: LandMar

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct _18Detail_Previews: PreviewProvider {
    static var previews: some View {
        _18Detail(xxx: _18Data[0])
    }
}
