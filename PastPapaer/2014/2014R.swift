//
//  2014R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _14Row: View {
    var ccc: Land14

    var body: some View {
        HStack {
            Text(ccc.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _14Row_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _14Row(ccc: _14Data[0])
            _14Row(ccc: _14Data[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
