//
//  HomeView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
@State var showOL = false
@State var showIG = false
@State var showAL = false
@State var showIB = false
    
    var body: some View {
        
        NavigationView{
            
            VStack {
                
           ClockView()
            
           .scaleEffect(0.85)
           .padding(.horizontal)
           .frame(width: screen.width-30, height: 140)
           .background(Color("Clockbackground"))
           .cornerRadius(12)
           .overlay(RoundedRectangle(cornerRadius: 12)
           .stroke(Color.gray.opacity(0.1), lineWidth: 2.5))
           .shadow(color: Color("ClockShadow"), radius: 5, x: 0, y: 2)
           
  
           .padding(.top)
                
           
                NavigationLink(destination: OLView(), isActive: self.$showOL){
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                self.showOL = true
                                 
              })
            {

                ButtonView(name: "Olevel", level: "CAIE")
             }
        }
                
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                                 
              })
            {

                ButtonView(name: "IGCSE", level: "CAIE AQA Edexcel")
             }
            
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                                 
              })
            {

                ButtonView(name: "Alevel", level: "CAIE AQA Edexcel")
             }
                
            Button(action: {
                let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
                
                                 
              })
            {

                ButtonView(name: "IB", level: "Group1-6")
             }
                
                
           
              Spacer()
            }
            .navigationBarTitle("Home")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
