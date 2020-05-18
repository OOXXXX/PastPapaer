//
//  NotesView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/18.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI
import SafariServices

struct NotesView: View {
@State var All = false
@State var AllShow = false
@State var EngShow = false
@State var PhyShow = false
@State var GeoShow = false
@State var EcoShow = false
@State var AllString = "https://www.notion.so/ALL-Documents-e79a3abbe36c42678aef8fc9ad3ea355"
@State var EngString = "https://www.notion.so/English-Docs-728f1471a1d94432a965b3d2750a94d1"
@State var PhyString = "https://www.notion.so/Physics-Docs-8dc7ad8aab96474483c93fb91a5509d7"
@State var GeoString = "https://www.notion.so/Geography-Docs-8a55eb9e51904495a9c9c63e2b0fb735"
@State var EcoString = "https://www.notion.so/Economics-Docs-b746b3faf97043519e9bc50b6e1953d5"
    
    var body: some View {
            NavigationView {
                
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    
                    
                   NavigationLink(destination: TextShimmerView(), isActive: self.$All){
                        Button(action: {
                            let selectionFeedback = UISelectionFeedbackGenerator()
                              selectionFeedback.selectionChanged()
                            
                            self.All = true
                                             
                          })
                        {

                            ButtonView2(name: "All Subject", level: "Built with Notion")
                         }
                    }
                 
                HStack{
                    VStack {
                        LargeDocsView(subject: "Economics", forecolor: "BG2-Text", image: "Eco", padding: -19, backcolor: "BG3-Eco", shadow: "BG7-Shadow")
                            .padding(.top)
                            .padding(.horizontal, 10)
                            .onTapGesture {
                                self.EcoShow.toggle()
                            }
                            .sheet(isPresented: $EcoShow) {
                        SafariView(url:URL(string: self.EcoString)!)
                               .edgesIgnoringSafeArea(.all)
                            }
                        
                         
                        SmallDocsView(subject: "English", forecolor: "BG2-Text", image: "Eng", padding: -28, backcolor: "BG9-Eng", shadow: "BG7-Shadow")
                            .padding(.top, 5)
                            .padding(.horizontal, 10)
                        .onTapGesture {
                                self.EngShow.toggle()
                            }
                            .sheet(isPresented: $EngShow) {
                        SafariView(url:URL(string: self.EngString)!)
                               .edgesIgnoringSafeArea(.all)
                            }
                    }
                        
                    VStack {
                        SmallDocsView(subject: "Physics", forecolor: "BG6-Text", image: "Phy", padding: -10, backcolor: "BG8-Phy", shadow: "BG7-Shadow")
                            .padding(.top)
                            .padding(.horizontal, 10)
                        .onTapGesture {
                                self.PhyShow.toggle()
                            }
                            .sheet(isPresented: $PhyShow) {
                        SafariView(url:URL(string: self.PhyString)!)
                               .edgesIgnoringSafeArea(.all)
                            }
                         
                        LargeDocsView(subject: "Geography", forecolor: "BG6-Text", image: "Geo", padding: -35, backcolor: "BG5-Geo", shadow: "BG7-Shadow")
                            .padding(.top, 5)
                            .padding(.horizontal, 10)
                        .onTapGesture {
                                self.GeoShow.toggle()
                            }
                            .sheet(isPresented: $GeoShow) {
                        SafariView(url:URL(string: self.GeoString)!)
                               .edgesIgnoringSafeArea(.all)
                            }
                        
                        }
                    
                    }
                    
                }
            }
            .navigationBarTitle("Notes", displayMode: .inline)
            .background(Color("BG1"))
            
            }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}

struct ButtonView2: View {
@State private var hovered = false
    let name: String
    let level: String
    
    var body: some View{
     
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text(level)
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
              Spacer()
                
                Image(systemName: "rosette")
                .font(.system(size: 25))
                .foregroundColor(Color("background2"))
            }
            .padding()
            Spacer()
        }

            .frame(maxWidth: .infinity)
            .frame(height: 80.0)
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.1), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.1), radius: 3, x: 0, y: 1)
            .padding(.top)
            .padding(.horizontal)
     
    }
}

struct LargeDocsView: View {
    let subject: String
    let forecolor: String
    let image: String
    let padding: CGFloat
    let backcolor: String
    let shadow: String
    

    var body: some View{
        
        VStack {
            HStack {
                Text(subject)
                .modifier(FontCoustom10(size: 24))
                .foregroundColor(Color(forecolor))
                Spacer()
            }
            .padding(.top, 12)
            .padding(.leading, 10)
            Spacer()
            
            VStack {
                Image(image)
                
                .resizable()
                .scaledToFill()
                .padding(.bottom, padding)
            }
            .frame(width: 140, height: 170)
        }
            
        .frame(width: 160, height: 217)
        .background(Color(backcolor))
        .cornerRadius(15)
        .shadow(color: Color(shadow), radius: 3, x: 0, y: 1)
    }
}

struct SmallDocsView: View {
    let subject: String
    let forecolor: String
    let image: String
    let padding: CGFloat
    let backcolor: String
    let shadow: String
    

    var body: some View{
        
        VStack {
            HStack {
                Text(subject)
                .modifier(FontCoustom10(size: 24))
                .foregroundColor(Color(forecolor))
                Spacer()
            }
            .padding(.top, 12)
            .padding(.leading, 10)
            Spacer()
            
            VStack {
                Image(image)
                
                .resizable()
                .scaledToFill()
                .padding(.bottom, padding)
            }
            .frame(width: 140, height: 120)
        }
            
        .frame(width: 160, height: 170)
        .background(Color(backcolor))
        .cornerRadius(15)
        .shadow(color: Color(shadow), radius: 3, x: 0, y: 1)
    }
}
