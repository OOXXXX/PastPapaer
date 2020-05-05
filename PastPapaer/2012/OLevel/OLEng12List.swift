//
//  2012L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _12L: View {
    
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
                    _12L1()
                }
                if selected == 2{
                    _12L2()
                }
                
            }
           .navigationBarTitle(Text("2012"))
        }
        
    }
}


struct _12L1: View {
    var body: some View {
        List(_12Data) { fff in
            
            NavigationLink(destination: _12D(fff: fff)) {
                _12Row(fff: fff)
            }
        }
        
    }
}

struct _12L2: View {
    var body: some View {
        List(_12Data2) { fff2 in
            
            NavigationLink(destination: _12D2(fff2: fff2)) {
                _12Row2(fff2: fff2)
            }
        }
        
    }
}


 struct _12Row: View {
     var fff: Land12

     var body: some View {
         HStack {
             Text(fff.name)
                 .frame(width: 230, height: 45, alignment: .leading)
             Spacer()
         }
     }
 }

 struct _12Row2: View {
     var fff2: Land122

     var body: some View {
         HStack {
             Text(fff2.name)
                 .frame(width: 230, height: 45, alignment: .leading)
             Spacer()
         }
     }
 }

struct _12D: View {
    var fff: Land12

    var body: some View {
        VStack {
            Webview(url: (fff.url))
        }
        .navigationBarTitle(Text(fff.name), displayMode: .inline)
    }
}

struct _12D2: View {
    var fff2: Land122

    var body: some View {
        VStack {
            Webview(url: (fff2.url))
        }
        .navigationBarTitle(Text(fff2.name), displayMode: .inline)
    }
}
