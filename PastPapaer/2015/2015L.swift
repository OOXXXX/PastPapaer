//
//  2015L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _15L: View {
    
    @State var selected = 1
    //@State private var listView = [_18LististView(), TestView()]
    
    var body: some View {
        
      
        NavigationView {
            VStack{
                Picker(selection: $selected, label: Text("")){
                       Text("May-Jun").tag(1)
                       Text("Oct-Nov").tag(2)
                   }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: screen.width-24)
                
                if selected == 1{
                    _15L1()
                }
                if selected == 2{
                    _15L2()
                }
                
            }
           .navigationBarTitle(Text("2015"))
        }
        
    }
}


struct _15L1: View {
    var body: some View {
        List(_15Data) { bbb in
            
            NavigationLink(destination: _15D(bbb: bbb)) {
                _15Row(bbb: bbb)
            }
        }
        
    }
}

struct _15L2: View {
    var body: some View {
        List(_15Data2) { bbb2 in
            
            NavigationLink(destination: _15D2(bbb2: bbb2)) {
                _15Row2(bbb2: bbb2)
            }
        }
        
    }
}


 
