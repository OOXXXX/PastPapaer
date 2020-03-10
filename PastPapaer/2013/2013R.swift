//
//  2013R.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct _13Row: View {
    var ddd: Land13

    var body: some View {
        HStack {
            Text(ddd.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct _13Row2: View {
    var ddd2: Land132

    var body: some View {
        HStack {
            Text(ddd2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

//struct _13Row_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            _13Row(ddd: _13Data[0])
//            _13Row(ddd: _13Data[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}
