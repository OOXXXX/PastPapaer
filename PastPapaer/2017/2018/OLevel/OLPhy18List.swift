//
//  OLPhy18List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy18ListView: View {

@State var selected = 1

var body: some View {
    
  
    NavigationView {
        VStack{
            Picker(selection: $selected, label: Text("")){
                   Text("May-Jun").tag(1)
                   Text("Oct-Nov").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
            //.frame(width: screen.width-24)
            
            if selected == 1{
                OPhy18List()
            }
            if selected == 2{
                OPhy18List2()
            }
            
        }
       .navigationBarTitle(Text("2018"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy18List: View {
    var body: some View {
        List(OPhy18Data) { xxx in
            
            NavigationLink(destination: OPhy18Detail(xxx: xxx)) {
                OPhy18Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy18List2: View {
    var body: some View {
        List(OPhy18Data2) { xxx2 in
            
            NavigationLink(destination: OPhy18Detail2(xxx2: xxx2)) {
                OPhy18Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy18Row: View {
    var xxx: OPhy18

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy18Row2: View {
    var xxx2: OPhy18_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy18Detail: View {
    var xxx: OPhy18

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy18Detail2: View {
    var xxx2: OPhy18_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
