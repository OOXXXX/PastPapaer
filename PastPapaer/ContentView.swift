//
//  ContentView.swift
//  PastPaperO-Test
//
//  Created by Rhapsody on 2020/5/6.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection = 0
       var body: some View {
        
            TabView(selection: $selection) {
                Home()
                     
                    .tabItem {
                        if selection == 0 {
                            Image(systemName: "house.fill")
                            .font(.system(size: 23))
                        } else {
                            Image(systemName: "house")
                            .font(.system(size: 23))
                        }
           
                    }.tag(0)
                     
        
                
                NotesView()
                    .tabItem {
                        if selection == 1 {
                            Image(systemName: "doc.text.fill")
                            .font(.system(size: 23))
                        } else {
                            Image(systemName: "doc.text")
                            .font(.system(size: 23))
                        }
                    }.tag(1)
                
                
                Text("About View")
                .tabItem {
                    if selection == 2 {
                        Image(systemName: "person.fill")
                        .font(.system(size: 23))
                    } else {
                        Image(systemName: "person")
                        .font(.system(size: 23))
                    }
                }.tag(2)
                
            }
                        
                     
             
        }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


 

 

struct TextShimmerView : View {
    
    @State var show = false
    
    var body : some View{
        
        ZStack{
            
            
            
            VStack {
                
                Spacer()
                
                ZStack{
                   
                 
                    Text("More Paper Coming Soon!")
                        .foregroundColor(Color("ColorShimmer").opacity(0.4))
                        .font(.system(size: 28))
                    
                    Text("More Paper Coming Soon!")
                        .foregroundColor(Color("ColorShimmer"))
                        .font(.system(size: 28))
                        .mask(
                    
                        
                    Capsule()
                    .fill(LinearGradient(gradient: .init(colors: [.clear,.white,.clear]), startPoint: .top, endPoint: .bottom))
                    .rotationEffect(.init(degrees: 30))
                    .offset(x: self.show ? 180 : -130)
                            
                        )
                    
                }
                    Spacer()
                
                    
                
                Group {
                    Text("Storing: 1330 Paper")
                        .foregroundColor(Color("ColorShimmerText"))
                        .font(.system(size: 15))
                
                        
                    Text("Currently Support: 6 subjects")
                    .foregroundColor(Color("ColorShimmerText"))
                    .font(.system(size: 15))
                }
            .offset(x: 0, y: -125)
            
            }
            .padding(.bottom, 23.5)
            .edgesIgnoringSafeArea(.bottom)
            
        }
        .onAppear {
            
            withAnimation(Animation.default.speed(0.25).delay(0).repeatForever(autoreverses: true)){
                
                self.show.toggle()
            }
        }
    }
}

 
