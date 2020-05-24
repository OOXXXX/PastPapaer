//
//  EnglishDocsView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/3.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI
import SafariServices

struct EngDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/English-Docs-728f1471a1d94432a965b3d2750a94d1"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "English Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
//     SafariView(url:URL(string: self.urlString1)!)
            
        Webview(url: self.urlString1)
        .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}

struct MathDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/Mathematics-Docs-731382564a5c43c3b364a06da952657d"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "Maths Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
     SafariView(url:URL(string: self.urlString1)!)
            .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}

struct PhyDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/Physics-Docs-8dc7ad8aab96474483c93fb91a5509d7"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "Physics Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
     SafariView(url:URL(string: self.urlString1)!)
            .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}

struct CsDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/CS-Docs-a13fd7f4735c47dc85cdeabb2a5fe60a"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "CS Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
     SafariView(url:URL(string: self.urlString1)!)
            .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}

struct BioDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/Mathematics-Docs-731382564a5c43c3b364a06da952657d"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "Maths Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
     SafariView(url:URL(string: self.urlString1)!)
            .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}

struct GeoDocsView: View {
@State var show2019 = false
@State var showSafari = false
@State var urlString1 = "https://www.notion.so/Geography-Docs-8a55eb9e51904495a9c9c63e2b0fb735"

var body: some View {
ScrollView(.vertical, showsIndicators: false){
    DocView(title: "Geography Documentation")
        .padding(.top, 6)
        .padding(.bottom, -15)
        .onTapGesture {
             self.showSafari.toggle()
            }
        .sheet(isPresented: $showSafari) {
     SafariView(url:URL(string: self.urlString1)!)
            .edgesIgnoringSafeArea(.all)
          }
         
        
        IssueView()
        
         
        }
    }
}


struct DocView: View {
    let title: String
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .modifier(FontCoustom5(size: 33))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -6)
                    
                    Text("Documentation for O-level, IGCSE and A-level, including some official guides and videos.")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
            }
            .padding(13)
            .padding(.trailing,10)
            .padding(.leading, 3)
            Spacer()
        }
            
        .frame(maxWidth: .infinity)
            
        .frame(height: 140)
            // .background(Color("secondary"))
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.09), lineWidth: 2))
            //.shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding()
        
        
    }
    
}

struct IssueView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("PastPaperO Issues")
                        .modifier(FontCoustom5(size: 33))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -6)
                    
                    Text("You are encouraged to open issues on my Github repo, it is used to track bugs & feature requests.")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
            }
            .padding(13)
            .padding(.trailing,10)
            .padding(.leading, 3)
            Spacer()
        }
            
        .frame(maxWidth: .infinity)
            
        .frame(height: 140)
            // .background(Color("secondary"))
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.09), lineWidth: 2))
            //.shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding()
    }
}


struct SafariView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }

}


struct DocsView_Previews: PreviewProvider {
    static var previews: some View {
        EngDocsView()
    }
}
