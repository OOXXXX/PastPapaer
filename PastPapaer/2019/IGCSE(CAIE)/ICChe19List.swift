//
//  ICChe19List.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/24.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ICChe19ListView: View {
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
                ICChe19List()
            }
            if selected == 2{
                ICChe19List2()
            }
            
        }
       .navigationBarTitle(Text("2019"))
       .navigationBarItems(trailing: Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
    
  }
}


struct ICChe19List: View {
    var body: some View {
        List(ICChe19Data) { xxx in
            
            NavigationLink(destination: ICChe19Detail(xxx: xxx)) {
                ICChe19Row(xxx: xxx)
            }
        }
        
    }
}

struct ICChe19List2: View {
    var body: some View {
        List(ICChe19Data2) { xxx2 in
            
            NavigationLink(destination: ICChe19Detail2(xxx2: xxx2)) {
                ICChe19Row2(xxx2: xxx2)
            }
        }
        
    }
}


struct ICChe19Row: View {
    var xxx: ICChe19

    var body: some View {
        HStack {
            Text(xxx.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}

struct ICChe19Row2: View {
    var xxx2: ICChe19_2

    var body: some View {
        HStack {
            Text(xxx2.name)
                .frame(width: 230, height: 45, alignment: .leading)
            Spacer()
        }
    }
}


struct ICChe19Detail: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var xxx: ICChe19

    var body: some View {
        VStack {
            Webview(url: (xxx.url))
        }
        .navigationBarTitle(Text(xxx.name), displayMode: .inline)
        .navigationBarItems(trailing: shareButton)
         .popover(isPresented: $isActivityPopoverPresented, attachmentAnchor: .point(.topTrailing), arrowEdge: .top, content: activityView)
         .sheet(isPresented: $isActivitySheetPresented, content: activityView)
     }
     private var shareButton: some View {
         Button(action: {
             switch (self.horizontalSizeClass, self.verticalSizeClass) {
             case (.regular, .regular):
                 // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPad:
                 self.isActivityPopoverPresented.toggle()
             default:
                 // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPhone and iPod Touch:
                 self.isActivitySheetPresented.toggle()
                haptic(type: .success)
             }
         }, label: {
             Image(systemName: "square.and.arrow.up")
                 .font(.system(size: 20, weight: .medium))
              .frame(width: 38, height: 38)
              .hoverEffect(.automatic)
              .padding(.trailing, -5)
              .padding(.bottom, 5)
         })
     }
     
     private func activityView() -> some View {
         let url = URL(string: xxx.url)!
         let filename = url.pathComponents.last!
         let fileManager = FileManager.default
         let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
         let data: Data
         if fileManager.fileExists(atPath: itemURL.path) {
             data = try! Data(contentsOf: itemURL)
         } else {
             data = try! Data(contentsOf: url)
             fileManager.createFile(atPath: itemURL.path, contents: data, attributes: nil)
         }
         let activityView = ActivityView(activityItems: [itemURL], applicationActivities: nil)
         return Group {
             if self.horizontalSizeClass == .regular && self.verticalSizeClass == .regular {
                 activityView.frame(width: 300, height: 480)
             } else {
                 activityView
                .edgesIgnoringSafeArea(.all)
             }
         }
     }
}

struct ICChe19Detail2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var xxx2: ICChe19_2

    var body: some View {
        VStack {
            Webview(url: (xxx2.url))
        }
        .navigationBarTitle(Text(xxx2.name), displayMode: .inline)
        .navigationBarItems(trailing: shareButton)
            .popover(isPresented: $isActivityPopoverPresented, attachmentAnchor: .point(.topTrailing), arrowEdge: .top, content: activityView)
            .sheet(isPresented: $isActivitySheetPresented, content: activityView)
        }
        private var shareButton: some View {
            Button(action: {
                switch (self.horizontalSizeClass, self.verticalSizeClass) {
                case (.regular, .regular):
                    // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPad:
                    self.isActivityPopoverPresented.toggle()
                default:
                    // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPhone and iPod Touch:
                    self.isActivitySheetPresented.toggle()
                    haptic(type: .success)
                }
            }, label: {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 20, weight: .medium))
                 .frame(width: 38, height: 38)
                 .hoverEffect(.automatic)
                 .padding(.trailing, -5)
                 .padding(.bottom, 5)
            })
        }
        
        private func activityView() -> some View {
            let url = URL(string: xxx2.url)!
            let filename = url.pathComponents.last!
            let fileManager = FileManager.default
            let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
            let data: Data
            if fileManager.fileExists(atPath: itemURL.path) {
                data = try! Data(contentsOf: itemURL)
            } else {
                data = try! Data(contentsOf: url)
                fileManager.createFile(atPath: itemURL.path, contents: data, attributes: nil)
            }
            let activityView = ActivityView(activityItems: [itemURL], applicationActivities: nil)
            return Group {
                if self.horizontalSizeClass == .regular && self.verticalSizeClass == .regular {
                    activityView.frame(width: 300, height: 480)
                } else {
                    activityView
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
}


struct ICChe19: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

struct ICChe19_2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
    
}

let ICChe19Data: [ICChe19] = load("OLChe19.json")
let ICChe19Data2: [ICChe19_2] = load("OLChe19-2.json")
