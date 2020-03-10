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

struct _18Detail2: View {
    var xxx2: LandMar2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

 
