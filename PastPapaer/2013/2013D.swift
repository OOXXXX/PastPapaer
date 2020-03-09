//
//  2013D.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _13D: View {
    var ddd: Land13

    var body: some View {
        VStack {
            Webview(url: (ddd.url))
        }
        .navigationBarTitle(Text(ddd.name), displayMode: .inline)
    }
}

struct _13D_Previews: PreviewProvider {
    static var previews: some View {
        _13D(ddd: _13Data[0])
    }
}

