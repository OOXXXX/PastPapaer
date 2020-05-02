//
//  YearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/1.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct YearView: View {
    @Binding var isNavigationBarHidden: Bool

    
    
    var body: some View {
        Text("sss")
        
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}

//struct YearView_Previews: PreviewProvider {
//    static var previews: some View {
//        YearView()
//    }
//}
