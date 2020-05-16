//
//  2020List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct  _17List: View {
    
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
                    _17List1()
                }
                if selected == 2{
                    _17List2()
                }
                
            }
           .navigationBarTitle(Text("2017"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct _17List1: View {
    var body: some View {
        List(_17Data) { sss in
            
            NavigationLink(destination: _17Detail(sss: sss)) {
                _17Row(sss: sss)
            }
        }
        
    }
}

struct _17List2: View {
    var body: some View {
        List(_17Data2) { sss2 in
            
            NavigationLink(destination: _17Detail2(sss2: sss2)) {
                _17Row2(sss2: sss2)
            }
        }
        
    }
}


struct _17Row: View {
    var sss: Land17

    var body: some View {
        HStack {
            Text(sss.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct _17Row2: View {
    var sss2: Land172

    var body: some View {
        HStack {
            Text(sss2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct _17Detail: View {
    var sss: Land17

    var body: some View {
        VStack {
            Webview(url: (sss.url))
        }
        .navigationBarTitle(Text(sss.name), displayMode: .inline)
    }
}

struct _17Detail2: View {
    var sss2: Land172

    var body: some View {
        VStack {
            Webview(url: (sss2.url))
        }
        .navigationBarTitle(Text(sss2.name), displayMode: .inline)
    }
}
