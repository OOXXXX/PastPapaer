//
//  ContentView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showUpdate = false
    let generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        VStack{
             
            HStack{
                Text("PastPaper")
                        .modifier(FontCoustom7(size: 40))
                        .frame(width: screen.width-50, height: 20, alignment: .leading)
                        .padding(.top)
                        .offset(x: 13, y: 0)
                        
                Button(action: {
                    self.generator.notificationOccurred(.success)
                    self.showUpdate.toggle() }) {
                    Image(systemName: "bolt.horizontal.fill")
                        .renderingMode(.original)
                        .font(.system(size: 18, weight: .medium))
                        .frame(width: 36, height: 36)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    .padding(.top)
                    
                    }
                    .offset(x: -15, y: 0)
                .sheet(isPresented: $showUpdate) {
                    BlogView()
                }
               
            }
            
                .frame(width: screen.width, height: 35)
                    .padding(.top)
                    .padding(.bottom, -5)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(sectionData) { item in
                            SectionView(section: item)
                            .frame(width: 275, height: 160)
                        }
                        .padding(.top, 30)
                    }
                    .padding(20)
                    //.padding(.bottom, 30)
                }
                .offset(x: 0, y: -30)
                
                HStack {
                    Text("Section:")
                        .modifier(FontCoustom(size: 25))
                    Spacer()
                }
                .padding(.leading, 30)
                .offset(x: 0, y: -50)
                
                SectionView2(section: sectionData2[2], height: 100.0, width: screen.width-30)
                .offset(x: 0, y: -50)
                //.background(Color("Color-2"))
                
                
                SectionView2(section: sectionData2[2], height: 100.0, width: screen.width-30)
                .offset(x: 0, y: -50)
                //.background(Color("Color-2"))
                    //.padding(.top, 8)
                
                SectionView2(section: sectionData2[2], height: 100.0, width: screen.width-30)
                .offset(x: 0, y: -50)
                //.background(Color("Color-2"))
             
                
                }
            .frame(width: screen.width)
            }
    }



struct SectionView: View {
    var section: Section
    var height: CGFloat = 160
    var width: CGFloat = 260
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(width: width, height: height)
        .background(Color("Color-2"))
        .cornerRadius(10)
        .shadow(color: Color("HomeCard").opacity(0.2), radius: 5, x: 0, y: 10)
    }
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    //var image: Image
    var color: Color
}

let sectionData = [
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
]

struct Section2: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    //var image: Image
    var color: Color
}


struct SectionView2: View {
    var section: Section
    var height: CGFloat = 80
    var width: CGFloat = 260
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: width, height: height)
        .background(Color("Color-2"))
        .cornerRadius(14)
        .shadow(color: Color("HomeCard").opacity(0.1), radius: 5, x: 0, y: 5)
    }
}

let sectionData2 = [
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
    Section(title: " ", text: " ", logo: " ", color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))),
]

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
