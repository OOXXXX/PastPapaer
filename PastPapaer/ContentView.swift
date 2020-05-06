//
//  ContentView.swift
//  PastPaperO-Test
//
//  Created by Rhapsody on 2020/5/6.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TextShimmerView()
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
                
                    
                
                    Text("Storing: 1330 Paper")
                    .foregroundColor(Color("ColorShimmerText"))
                    .font(.system(size: 15))
                        
                    Text("Currently Support: 6 subjects")
                    .foregroundColor(Color("ColorShimmerText"))
                    .font(.system(size: 15))
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

 
