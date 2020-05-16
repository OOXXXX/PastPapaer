//
//  OLMath14List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/5.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OMath14ListView: View {
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
                OMath14List()
            }
            if selected == 2{
                OMath14List2()
            }
            
        }
       .navigationBarTitle(Text("2014"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}


struct OMath14List: View {
    var body: some View {
        List(OMath14Data) { xxx in
            
            NavigationLink(destination: OMath14Detail(xxx: xxx)) {
                OMath14Row(xxx: xxx)
            }
        }
        
    }
}

struct OMath14List2: View {
    var body: some View {
        List(OMath14Data2) { xxx2 in
            
            NavigationLink(destination: OMath14Detail2(xxx2: xxx2)) {
                OMath14Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct OMath14Row: View {
    var xxx: OMath14

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct OMath14Row2: View {
    var xxx2: OMath14_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct OMath14Detail: View {
    var xxx: OMath14

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
    }
}

struct OMath14Detail2: View {
    var xxx2: OMath14_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
    }
}
