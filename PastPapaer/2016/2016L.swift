//
//  2020List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _16L: View {
    
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
                    _16L1()
                }
                if selected == 2{
                    _16L2()
                }
                
            }
           .navigationBarTitle(Text("2016"))
        }
        
    }
}


struct _16L1: View {
    var body: some View {
        List(_16Data) { aaa in
            
            NavigationLink(destination: _16D(aaa: aaa)) {
                _16Row(aaa: aaa)
            }
        }
        
    }
}

struct _16L2: View {
    var body: some View {
        List(_16Data2) { aaa2 in
            
            NavigationLink(destination: _16D2(aaa2: aaa2)) {
                _16Row2(aaa2: aaa2)
            }
        }
        
    }
}


 
