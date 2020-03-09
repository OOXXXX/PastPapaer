//
//  2015R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _15Row: View {
    var bbb: Land15

    var body: some View {
        HStack {
            Text(bbb.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _15Row_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _15Row(bbb: _15Data[0])
            _15Row(bbb: _15Data[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
