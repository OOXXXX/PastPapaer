//
//  SamplePaperView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct SamplePaperView: View {
    
    @State var show2019 = false
    
    var body: some View {
        
        ScrollView {
            ZStack {
                
                VStack{
                    
                    Text("PastPaper")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 325, height: 40, alignment: .leading)
                        .padding()
                    
                    Firstcard()
                        .padding(.bottom)
                    
                    Secondcard()
                    .padding()
                    
                    Thridcard()
                    .padding()
                    
                    
                Spacer()
            }
              Button(action: {self.show2019.toggle() }) {
                    Text("")
                    .frame(width: 320, height: 90)
//                        .background(Color.black)
                
                }
                .sheet(isPresented: self.$show2019) {
                    LandmarkList()
                }
                .offset(x: 0, y: -100)
                
            }
        }

}




struct SamplePaperView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
            SamplePaperView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

struct Firstcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2019")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("background2"))
                    Text("Olevel")
                        .modifier(FontCoustom(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo2")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: -3)
            }
            .padding()
            Spacer()
        }
        .frame(width: 320.0, height: 100.0)
        .background(Color("secondary"))
        .cornerRadius(18)
        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
        }
    
    }
    
    struct Secondcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2018")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("background2"))
                    Text("Olevel")
                        .modifier(FontCoustom(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo2")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: -3)
            }
            .padding()
            Spacer()
        }
        .frame(width: 320.0, height: 100.0)
        .background(Color("secondary"))
        .cornerRadius(18)
        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
        }
    
    }
    
    struct Thridcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2017")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("background2"))
                    Text("Olevel")
                        .modifier(FontCoustom(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo2")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: -3)
            }
            .padding()
            Spacer()
        }
        .frame(width: 320.0, height: 100.0)
        .background(Color("secondary"))
        .cornerRadius(18)
        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 10)
        }
    
    }
}
