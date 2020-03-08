//
//  2018Row.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _18Row: View {
    var xxx: LandMar

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _18Row_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            _18Row(xxx: _18Data[0])
            _18Row(xxx: _18Data[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
