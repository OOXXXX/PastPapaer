//
//  OLCs17List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs17ListView: View {
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
                OCs17List()
            }
            if selected == 2{
                OCs17List2()
            }
            
        }
       .navigationBarTitle(Text("2017"))
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OCs17List: View {
    var body: some View {
        List(OCs17Data) { xxx in
            
            NavigationLink(destination: OCs17Detail(xxx: xxx)) {
                OCs17Row(xxx: xxx)
            }
        }
        
    }
}

struct OCs17List2: View {
    var body: some View {
        List(OCs17Data2) { xxx2 in
            
            NavigationLink(destination: OCs17Detail2(xxx2: xxx2)) {
                OCs17Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OCs17Row: View {
    var xxx: OCs17

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OCs17Row2: View {
    var xxx2: OCs17_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OCs17Detail: View {
    var xxx: OCs17

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OCs17Detail2: View {
    var xxx2: OCs17_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}

