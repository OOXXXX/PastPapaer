//
//  OLPhy14List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy14ListView: View {

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
                OPhy14List()
            }
            if selected == 2{
                OPhy14List2()
            }
            
        }
       .navigationBarTitle(Text("2014"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy14List: View {
    var body: some View {
        List(OPhy14Data) { xxx in
            
            NavigationLink(destination: OPhy14Detail(xxx: xxx)) {
                OPhy14Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy14List2: View {
    var body: some View {
        List(OPhy14Data2) { xxx2 in
            
            NavigationLink(destination: OPhy14Detail2(xxx2: xxx2)) {
                OPhy14Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy14Row: View {
    var xxx: OPhy14

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy14Row2: View {
    var xxx2: OPhy14_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy14Detail: View {
    var xxx: OPhy14

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy14Detail2: View {
    var xxx2: OPhy14_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
