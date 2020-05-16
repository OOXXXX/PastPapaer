//
//  OLGeo12List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OGeo12ListView: View {

@State var selected = 1

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
                OGeo12List()
            }
            if selected == 2{
                OGeo12List2()
            }
            
        }
       .navigationBarTitle(Text("2012"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OGeo12List: View {
    var body: some View {
        List(OGeo12Data) { xxx in
            
            NavigationLink(destination: OGeo12Detail(xxx: xxx)) {
                OGeo12Row(xxx: xxx)
            }
        }
        
    }
}

struct OGeo12List2: View {
    var body: some View {
        List(OGeo12Data2) { xxx2 in
            
            NavigationLink(destination: OGeo12Detail2(xxx2: xxx2)) {
                OGeo12Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OGeo12Row: View {
    var xxx: OGeo12

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OGeo12Row2: View {
    var xxx2: OGeo12_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OGeo12Detail: View {
    var xxx: OGeo12

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OGeo12Detail2: View {
    var xxx2: OGeo12_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
