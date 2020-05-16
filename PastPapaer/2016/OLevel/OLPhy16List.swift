//
//  OLPhy16List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OPhy16ListView: View {
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
                OPhy16List()
            }
            if selected == 2{
                OPhy16List2()
            }
            
        }
       .navigationBarTitle(Text("2016"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OPhy16List: View {
    var body: some View {
        List(OPhy16Data) { xxx in
            
            NavigationLink(destination: OPhy16Detail(xxx: xxx)) {
                OPhy16Row(xxx: xxx)
            }
        }
        
    }
}

struct OPhy16List2: View {
    var body: some View {
        List(OPhy16Data2) { xxx2 in
            
            NavigationLink(destination: OPhy16Detail2(xxx2: xxx2)) {
                OPhy16Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OPhy16Row: View {
    var xxx: OPhy16

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OPhy16Row2: View {
    var xxx2: OPhy16_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OPhy16Detail: View {
    var xxx: OPhy16

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OPhy16Detail2: View {
    var xxx2: OPhy16_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
