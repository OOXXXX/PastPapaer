//
//  2014L.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/9.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _14L: View {
    
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
                    _14L1()
                }
                if selected == 2{
                    _14L2()
                }
                
            }
           .navigationBarTitle(Text("2014"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct _14L1: View {
    var body: some View {
        List(_14Data) { ccc in
            
            NavigationLink(destination: _14D(ccc: ccc)) {
                _14Row(ccc: ccc)
            }
        }
        
    }
}

struct _14L2: View {
    var body: some View {
        List(_14Data2) { ccc2 in
            
            NavigationLink(destination: _14D2(ccc2: ccc2)) {
                _14Row2(ccc2: ccc2)
            }
        }
        
    }
}

struct _14Row: View {
    var ccc: Land14

    var body: some View {
        HStack {
            Text(ccc.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _14Row2: View {
    var ccc2: Land142

    var body: some View {
        HStack {
            Text(ccc2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

 
struct _14D: View {
    var ccc: Land14

    var body: some View {
        VStack {
            Webview(url: (ccc.url))
        }
        .navigationBarTitle(Text(ccc.name), displayMode: .inline)
    }
}

struct _14D2: View {
    var ccc2: Land142

    var body: some View {
        VStack {
            Webview(url: (ccc2.url))
        }
        .navigationBarTitle(Text(ccc2.name), displayMode: .inline)
    }
}
