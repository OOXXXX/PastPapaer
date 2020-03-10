//
//  2011R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _11Row: View {
    var eee: Land11

    var body: some View {
        HStack {
            Text(eee.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _11Row2: View {
    var eee2: Land112

    var body: some View {
        HStack {
            Text(eee2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}
