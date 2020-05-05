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


 struct _16Row: View {
     var aaa: Land16

     var body: some View {
         HStack {
             Text(aaa.name)
                 .frame(width: 230, height: 45, alignment: .leading)
             Spacer()
         }
     }
 }


 struct _16Row2: View {
     var aaa2: Land162

     var body: some View {
         HStack {
             Text(aaa2.name)
                 .frame(width: 230, height: 45, alignment: .leading)
             Spacer()
         }
     }
 }

struct _16D: View {
    var aaa: Land16

    var body: some View {
        VStack {
            Webview(url: (aaa.url))
        }
        .navigationBarTitle(Text(aaa.name), displayMode: .inline)
    }
}

struct _16D2: View {
    var aaa2: Land162

    var body: some View {
        VStack {
            Webview(url: (aaa2.url))
        }
        .navigationBarTitle(Text(aaa2.name), displayMode: .inline)
    }
}
