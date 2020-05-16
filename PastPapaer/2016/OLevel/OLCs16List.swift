//
//  OLCs16List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs16ListView: View {
@Environment(\.presentationMode) var presentationMode
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
                OCs16List()
            }
            if selected == 2{
                OCs16List2()
            }
            
        }
       .navigationBarTitle(Text("2016"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OCs16List: View {
    var body: some View {
        List(OCs16Data) { xxx in
            
            NavigationLink(destination: OCs16Detail(xxx: xxx)) {
                OCs16Row(xxx: xxx)
            }
        }
        
    }
}

struct OCs16List2: View {
    var body: some View {
        List(OCs16Data2) { xxx2 in
            
            NavigationLink(destination: OCs16Detail2(xxx2: xxx2)) {
                OCs16Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OCs16Row: View {
    var xxx: OCs16

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OCs16Row2: View {
    var xxx2: OCs16_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OCs16Detail: View {
    var xxx: OCs16

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OCs16Detail2: View {
    var xxx2: OCs16_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

