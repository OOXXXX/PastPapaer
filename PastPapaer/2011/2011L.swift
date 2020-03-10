//
//  2011L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _11L: View {
    
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
                    _11L1()
                }
                if selected == 2{
                    _11L2()
                }
                
            }
           .navigationBarTitle(Text("2011"))
        }
        
    }
}


struct _11L1: View {
    var body: some View {
        List(_11Data) { eee in
            
            NavigationLink(destination: _11D(eee: eee)) {
                _11Row(eee: eee)
            }
        }
        
    }
}

struct _11L2: View {
    var body: some View {
        List(_11Data2) { eee2 in
            
            NavigationLink(destination: _11D2(eee2: eee2)) {
                _11Row2(eee2: eee2)
            }
        }
        
    }
}


 
