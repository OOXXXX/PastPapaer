//
//  TestView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/4/29.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            Text("More Functions are coming...")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.bottom)
        }
         
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
