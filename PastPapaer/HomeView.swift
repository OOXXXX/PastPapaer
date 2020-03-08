//
//  HomeView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct HomeView: View {
   @State var showMenu = false
   
        
        var body: some View {
            
            let drag = DragGesture()
                .onEnded {
                    if $0.translation.width < -10 {
                        withAnimation {
                            self.showMenu = false
                        }
                    }
                }
            
            return VStack {
//                Text("Home")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .padding(.horizontal, 30)
//                    .frame(width: screen.width, height: 40, alignment: .leading)
                    
                NavigationView {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            
                        MainView(showMenu: self.$showMenu)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                            .disabled(self.showMenu ? true : false)
                        if self.showMenu {
                            MenuView()
                                .frame(width: geometry.size.width/2)
                                .transition(.move(edge: .leading))
                        }
                            
                        }
                            .gesture(drag)
                    }
        //                .navigationBarTitle("Side Menu", displayMode: .inline)
        //                .navigationBarItems(leading: (
        //                    Button(action: {
        //                        withAnimation {
        //                            self.showMenu.toggle()
        //                        }
        //                    }) {
        //                        Image(systemName: "line.horizontal.3")
        //                            .imageScale(.large)
        //                    }
        //                ))
                }
                
            }
        }
}


struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
               self.showMenu = true
            }
        })
        {
            Image(systemName: "text.justifyleft")
                   .font(.system(size: 18, weight: .medium))
                   .frame(width: 36.0, height: 36)
                   .background(Color.white)
                   .foregroundColor(Color.black)
                   .clipShape(Circle())
                   .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 2)
                   //.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
           
        }
//        .offset(x: screen.width/2-30, y: -screen.height/2+40)
        .edgesIgnoringSafeArea(.bottom)
        .offset(x: screen.width/2-40, y: -300)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
            HomeView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
