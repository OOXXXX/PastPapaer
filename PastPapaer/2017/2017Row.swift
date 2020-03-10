//
//  2018Row.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _17Row: View {
    var sss: Land17

    var body: some View {
        HStack {
            Text(sss.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _17Row2: View {
    var sss2: Land172

    var body: some View {
        HStack {
            Text(sss2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}







struct _17Row_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _17Row(sss: _17Data[0])
            _17Row(sss: _17Data[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
