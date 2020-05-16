//
//  OLMath19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath19ListView: View {

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
                OMath19List()
            }
            if selected == 2{
                OMath19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
    
  }
}


struct OMath19List: View {
    var body: some View {
        List(OMath19Data) { xxx in
            
            NavigationLink(destination: OMath19Detail(xxx: xxx)) {
                OMath19Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath19List2: View {
    var body: some View {
        List(OMath19Data2) { xxx2 in
            
            NavigationLink(destination: OMath19Detail2(xxx2: xxx2)) {
                OMath19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath19Row: View {
    var xxx: OMath19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath19Row2: View {
    var xxx2: OMath19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath19Detail: View {
    var xxx: OMath19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath19Detail2: View {
    var xxx2: OMath19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

