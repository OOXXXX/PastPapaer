//
//  HomeView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/14.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
            
            VStack {
                
           ClockView()
           .scaleEffect(0.85)
           .padding(.horizontal)
           .frame(height: 150)
           .overlay(RoundedRectangle(cornerRadius: 10)
           .stroke(Color.gray.opacity(0.9), lineWidth: 3))
           .shadow(radius: 5)
           .background(Color("Clockbackground"))
           .padding(.top)
           Spacer()
             
            }
        
            .navigationBarTitle("Home")
        }
    
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
