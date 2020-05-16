//
//  OLCs15List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OCs15ListView: View {
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
                OCs15List()
            }
            if selected == 2{
                OCs15List2()
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


struct OCs15List: View {
    var body: some View {
        List(OCs15Data) { xxx in
            
            NavigationLink(destination: OCs15Detail(xxx: xxx)) {
                OCs15Row(xxx: xxx)
            }
        }
        
    }
}

struct OCs15List2: View {
    var body: some View {
        List(OCs15Data2) { xxx2 in
            
            NavigationLink(destination: OCs15Detail2(xxx2: xxx2)) {
                OCs15Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OCs15Row: View {
    var xxx: OCs15

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OCs15Row2: View {
    var xxx2: OCs15_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OCs15Detail: View {
    var xxx: OCs15

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OCs15Detail2: View {
    var xxx2: OCs15_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}


