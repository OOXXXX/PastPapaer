//
//  2012R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _12Row: View {
    var fff: Land12

    var body: some View {
        HStack {
            Text(fff.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _12Row2: View {
    var fff2: Land122

    var body: some View {
        HStack {
            Text(fff2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}
