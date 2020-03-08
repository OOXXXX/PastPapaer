//
//  BlogView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/8.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct BlogView: View {
@State var showHome = true
@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
              
        VStack {
            ZStack {
                VStack {
                    VStack {
                        Webview(url: "https://www.ooxxxx.club")
                            .padding(.top,60)
                            .edgesIgnoringSafeArea(.top)
                    }
                     Button(action: { self.presentationMode.wrappedValue.dismiss()
                        })
                     {
                        
                        
                         Image(systemName: "house")
                            .font(.system(size: 18, weight: .medium))
                            .frame(width: 36.0, height: 36)
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 2)
                            //.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                            
                     }
                            .offset(x: screen.width/2-40, y: -screen.height/2-230)
                             
                            
                    
                }
            }
            Text("2020 Patrick Zhu™️")
            .modifier(FontCoustom2(size: 18))
                .padding(.bottom, 15)
        }
 
    }
    
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
            BlogView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
