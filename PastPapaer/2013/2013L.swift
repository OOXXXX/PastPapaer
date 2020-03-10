//
//  2013L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _13L: View {
    
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
                    _13L1()
                }
                if selected == 2{
                    _13L2()
                }
                
            }
           .navigationBarTitle(Text("2013"))
        }
        
    }
}


struct _13L1: View {
    var body: some View {
        List(_13Data) { ddd in
            
            NavigationLink(destination: _13D(ddd: ddd)) {
                _13Row(ddd: ddd)
            }
        }
        
    }
}

struct _13L2: View {
    var body: some View {
        List(_13Data2) { ddd2 in
            
            NavigationLink(destination: _13D2(ddd2: ddd2)) {
                _13Row2(ddd2: ddd2)
            }
        }
        
    }
}


 
