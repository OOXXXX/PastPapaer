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
            
            VStack(spacing: 22){
                if self.selected == 0{
                    OLView()
                }
                if self.selected == 1{
                    IGView()
                     
                }
                if self.selected == 2{
                    ALView()
                     
                }
 
                Topbar(selected: self.$selected).offset(x: screen.width/2-92, y:-5)
                    .padding(.bottom, 28)
                     
 
        }
               .edgesIgnoringSafeArea(.bottom)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
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
                
                Image(systemName: "o.circle.fill")
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
                
                Image(systemName: "a.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.vertical,5)
                .padding(.horizontal,5)
                .background(self.selected == 2 ? Color.white : Color.clear)
                .foregroundColor(self.selected == 2 ? .black : .gray)
                .clipShape(Capsule())
            }
              
            
            }
    .frame(width: 145, height: 40)
            .padding(.horizontal, 6)
            .padding(.vertical, 5)
            .background(Color("Color2"))
            .clipShape(Capsule())
            .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.1))
            
    
            
    }
    
}
