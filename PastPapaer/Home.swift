//
//  Home.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/4/13.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct Home: View {
        @State var selected = 0
        
        var body: some View {
           
            VStack(spacing: 8){
                
                
                
                if self.selected == 0{
                    
                    test()
                }
                if self.selected == 1{
                    
                   HomeView()
                }
                if self.selected == 2{
                    
                  OlevelEnglishView()
                }
                
                Topbar(selected: self.$selected).padding(.top, 8).padding(.bottom, -2)
                
            }
        }
    }


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct test: View {
     var body: some View {
         Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Topbar : View {
    
    let generator = UINotificationFeedbackGenerator()
    @Binding var selected : Int
    
    var body : some View{
        
        HStack{
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 0
                
            }) {
                
                Image(systemName: "a.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.vertical,5)
                    .padding(.horizontal,5)
                    .foregroundColor(self.selected == 0 ? .pink : .gray)
                    .background(self.selected == 0 ? Color.white : Color.clear)
                    
                    .clipShape(Capsule())
                    
            }.padding(.trailing, 3)
            
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 1
                
            }) {
                
                Image(systemName: "i.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(self.selected == 1 ? Color.white : Color.clear)
                .foregroundColor(self.selected == 1 ? .blue : .gray)
                .clipShape(Capsule())
            }.padding(.trailing, 3)
            
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
                self.selected = 2
                
            }) {
                
                Image(systemName: "o.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(self.selected == 2 ? Color.white : Color.clear)
                .foregroundColor(self.selected == 2 ? .black : .gray)
                .clipShape(Capsule())
            }
              
            
            }
            
            .padding(.horizontal, 8)
            .padding(.vertical, 8)
            .background(Color("Color2"))
            .clipShape(Capsule())
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.1))
    
            .offset(x: screen.width-280)
    }
}
