//
//  OLEng10List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

import SwiftUI

struct  _10L: View {
    @Environment(\.presentationMode) var presentationMode
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
                .padding(.horizontal, 10)
                
                if selected == 1{
                    _10L1()
                }
                if selected == 2{
                    _10L2()
                }
                
            }
           .navigationBarTitle(Text("2010"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct _10L1: View {
    var body: some View {
        List(_10Data) { eee in
            
            NavigationLink(destination: _10D(eee: eee)) {
                _10Row(eee: eee)
            }
        }
        
    }
}

struct _10L2: View {
    var body: some View {
        List(_10Data2) { eee2 in
            
            NavigationLink(destination: _10D2(eee2: eee2)) {
                _10Row2(eee2: eee2)
            }
        }
        
    }
}

struct _10Row: View {
    var eee: Land10

    var body: some View {
        HStack {
            Text(eee.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _10Row2: View {
    var eee2: Land102

    var body: some View {
        HStack {
            Text(eee2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

 struct _10D: View {
     var eee: Land10

     var body: some View {
         VStack {
             Webview(url: (eee.url))
         }
         .navigationBarTitle(Text(eee.name), displayMode: .inline)
     }
 }

 struct _10D2: View {
     var eee2: Land102

     var body: some View {
         VStack {
             Webview(url: (eee2.url))
         }
         .navigationBarTitle(Text(eee2.name), displayMode: .inline)
     }
 }
