//
//  SamplePaperView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct SamplePaperView: View {
    
    @State var showUpdate = false
    @State var show2019 = false
    @State var show2018 = false
    @State var show2017 = false
    @State var show2016 = false
    @State var show2015 = false
    @State var show2014 = false
    @State var show2013 = false
    @State var show2012 = false
    @State var show2011 = false
    @State var show2010 = false
    
    
    var body: some View  {
        
        ScrollView {
              ZStack {
                
                VStack{
                    HStack{
                    
                    
                    Text("PastPaper")
                        .modifier(FontCoustom7(size: 40))
                        .frame(width: 325, height: 40, alignment: .leading)
                        .padding()
                        .offset(x: 13, y: 0)
                        
                Button(action: { self.showUpdate.toggle() }) {
                    Image(systemName: "bolt.horizontal.fill")
                        .renderingMode(.original)
                        .font(.system(size: 18, weight: .medium))
                        .frame(width: 36, height: 36)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    
                    }
                    .offset(x: -30, y: 0)
                .sheet(isPresented: $showUpdate) {
                    BlogView()
                }
                        
            }
                    
                    Firstcard()
                        .padding(.bottom)
                    
                    Secondcard()
                        .padding(.bottom)
                    
                    Thridcard()
                        .padding(.bottom)
                    
                    Forthcard()
                        .padding(.bottom)
                    
                    Fifthcard()
                        .padding(.bottom)
                    
                    Sixthcard()
                        .padding(.bottom)
                    
                    
                    
                Spacer()
            }
              Button(action: {self.show2019.toggle() }) {
                    Text("")
                    .frame(width: 320, height: 70)
                  //.background(Color.black)
                
                }
                .sheet(isPresented: self.$show2019) {
                    LandmarkList()
                }
                .offset(x: 0, y: -60)
                
              Button(action: {self.show2018.toggle() }) {
                      Text("")
                      .frame(width: 320, height: 70)
                    //.background(Color.black)
                  
                  }
                  .sheet(isPresented: self.$show2018) {
                      _18List()
                  }
                  .offset(x: 0, y: 34)
                
              Button(action: {self.show2017.toggle() }) {
                  Text("")
                  .frame(width: 320, height: 70)
                //.background(Color.black)
              
              }
              .sheet(isPresented: self.$show2017) {
                  _17List()
              }
              .offset(x: 0, y: 133)
            }
            
        }
//.background(Color.gray)
    
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
                    .modifier(FontCoustom5(size: 38))
                    .foregroundColor(Color("background2"))
                    .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo19")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345.0, height: 80.0)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
    
    struct Secondcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2018")
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                        
                        Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo18")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345.0, height: 80.0)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
    
    struct Thridcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2017")
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo17")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345, height: 80)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
    
    struct Forthcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2016")
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo16")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345, height: 80)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
    
    struct Fifthcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2015")
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo15")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345, height: 80)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
    
    struct Sixthcard: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2014")
                        .modifier(FontCoustom5(size: 38))
                        .foregroundColor(Color("background2"))
                        .padding(.bottom, -10)
                    
                    Text("Olevel")
                        .modifier(FontCoustom2(size: 18))
                        .foregroundColor(Color("Color"))
                }
                
                Spacer()
                Image("Logo14")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: 5)
            }
            .padding()
            Spacer()
        }
        .frame(width: 345, height: 80)
        .background(Color("secondary"))
        .cornerRadius(11)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: -3, y: -2)
        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 2, y: 4)
        }
    
    }
}
