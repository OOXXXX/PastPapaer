//
//  2015L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _15L: View {
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
                    _15L1()
                }
                if selected == 2{
                    _15L2()
                }
                
            }
           .navigationBarTitle(Text("2015"))
           .navigationBarItems(trailing: Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
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

struct _15Row: View {
    var bbb: Land15

    var body: some View {
        HStack {
            Text(bbb.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _15Row2: View {
    var bbb2: Land152

    var body: some View {
        HStack {
            Text(bbb2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

 struct _15D: View {
     var bbb: Land15

     var body: some View {
         VStack {
             Webview(url: (bbb.url))
         }
         .navigationBarTitle(Text(bbb.name), displayMode: .inline)
     }
 }

 struct _15D2: View {
     var bbb2: Land152

     var body: some View {
         VStack {
             Webview(url: (bbb2.url))
         }
         .navigationBarTitle(Text(bbb2.name), displayMode: .inline)
     }
 }
