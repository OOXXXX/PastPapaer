//
//  2016R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _16Row: View {
    var aaa: Land16

    var body: some View {
        HStack {
            Text(aaa.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct _16Row2: View {
    var aaa2: Land162

    var body: some View {
        HStack {
            Text(aaa2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct _16Row_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _16Row(aaa: _16Data[0])
            _16Row(aaa: _16Data[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

