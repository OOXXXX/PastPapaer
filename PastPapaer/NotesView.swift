//
//  NotesView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/18.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
            NavigationView {
                
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    ButtonView2(name: "All Docs", level: "Built with Notion")
                 
                HStack{
                    VStack {
                        LargeDocsView(subject: "Economics", forecolor: "BG2-Text", image: "Eco", padding: -19, backcolor: "BG3-Eco", shadow: "BG7-Shadow")
                            .padding(.top)
                            .padding(.horizontal, 10)
                        
                         
                        SmallDocsView(subject: "English", forecolor: "BG2-Text", image: "Eng", padding: -28, backcolor: "BG9-Eng", shadow: "BG7-Shadow")
                            .padding(.top, 5)
                            .padding(.horizontal, 10)
                    }
                        
                    VStack {
                        SmallDocsView(subject: "Physics", forecolor: "BG6-Text", image: "Phy", padding: -10, backcolor: "BG8-Phy", shadow: "BG7-Shadow")
                            .padding(.top)
                            .padding(.horizontal, 10)
                        
                         
                        LargeDocsView(subject: "Geography", forecolor: "BG6-Text", image: "Geo", padding: -35, backcolor: "BG5-Geo", shadow: "BG7-Shadow")
                            .padding(.top, 5)
                            .padding(.horizontal, 10)
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
