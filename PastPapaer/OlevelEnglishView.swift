//
//  OlevelEnglishView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/7.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OlevelEnglishView: View {
    let generator = UINotificationFeedbackGenerator()
    
    @State var selected = 2
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
    
    @State var active = false
    @State var activeIndex = -1
    @State var activeView = CGSize.zero
    
    
    var body: some View  {
        VStack{
                HStack{
                
                
                Text("PastPaper")
                    .modifier(FontCoustom7(size: 40))
                    .frame(width: screen.width-50, height: 20, alignment: .leading)
                    .padding(.top)
                    .offset(x: 13, y: 0)
                    
            Button(action: {
                self.generator.notificationOccurred(.success)
                self.showUpdate.toggle() }) {
                Image(systemName: "bolt.horizontal.fill")
                    .renderingMode(.original)
                    .font(.system(size: 18, weight: .medium))
                    .frame(width: 36, height: 36)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                .padding(.top)
                
                }
                .offset(x: -15, y: 0)
                .sheet(isPresented: $showUpdate) {
                BlogView()
            }
            
        }
                .frame(width: screen.width, height: 35)
                .padding(.top)
                .padding(.bottom, -5)

ScrollView {
  
  Button(action: {
  let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
              self.show2019.toggle()}) {

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
                    Image("Logo18")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .offset(x: 0, y: 5)
                }
                .padding()
                Spacer()
            }
            .frame(width: screen.width-30, height: 80.0)
                // .background(Color("secondary"))
                .background(Color("Color-2"))
                .cornerRadius(11)
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.1), lineWidth: 2))
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
                .padding(.top)
}
                
.sheet(isPresented: self.$show2019) {
    LandmarkList()
}

                
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
              selectionFeedback.selectionChanged()
          self.show2018.toggle()}) {

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
            .frame(width: screen.width-30, height: 80.0)
            .background(Color("Color-2"))
            .cornerRadius(11)
            //.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
            //.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.1), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding(.top)
       
  
  }
  .sheet(isPresented: self.$show2018) {
      _18List()
  }
//  .offset(x: 0, y: -245)
                
  Button(action: {
  let selectionFeedback = UISelectionFeedbackGenerator()
                  selectionFeedback.selectionChanged()
              self.show2017.toggle()}) {
     
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
                        Image("Logo18")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .offset(x: 0, y: 5)
                    }
                    .padding()
                    Spacer()
                }
                .frame(width: screen.width-30, height: 80)
                .background(Color("Color-2"))
                .cornerRadius(11)
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.1), lineWidth: 2))
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
                .padding(.top)
                
  
  }
  .sheet(isPresented: self.$show2017) {
      _17List()
  }
//              .offset(x: 0, y: -220)
                
 Button(action: {
 let selectionFeedback = UISelectionFeedbackGenerator()
                 selectionFeedback.selectionChanged()
             self.show2016.toggle()}) {
      
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
                        Image("Logo18")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .offset(x: 0, y: 5)
                    }
                    .padding()
                    Spacer()
                }
                .frame(width: screen.width-30, height: 80)
                .background(Color("Color-2"))
                .cornerRadius(11)
                .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.1), lineWidth: 2))
                .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
                .padding(.top)
                
 }
 .sheet(isPresented: self.$show2016) {
     _16L()
 }
 
                
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
            selectionFeedback.selectionChanged()
        self.show2015.toggle()}) {
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
         Image("Logo18")
             .resizable()
             .frame(width: 40, height: 40)
             .offset(x: 0, y: 5)
     }
     .padding()
     Spacer()
 }
 .frame(width: screen.width-30, height: 80)
 .background(Color("Color-2"))
 .cornerRadius(11)
 //.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
 //.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
 .overlay(RoundedRectangle(cornerRadius: 10)
 .stroke(Color.gray.opacity(0.1), lineWidth: 2))
 .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
 .padding(.top)
            

}
.sheet(isPresented: self.$show2015) {
    _15L()
}
 
                
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
            selectionFeedback.selectionChanged()
        self.show2014.toggle()}) {
            
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
        Image("Logo18")
            .resizable()
            .frame(width: 40, height: 40)
            .offset(x: 0, y: 5)
    }
    .padding()
    Spacer()
}
.frame(width: screen.width-30, height: 80)
.background(Color("Color-2"))
.cornerRadius(11)
//.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
//.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
.overlay(RoundedRectangle(cornerRadius: 10)
.stroke(Color.gray.opacity(0.1), lineWidth: 2))
.shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
.padding(.top)


}
.sheet(isPresented: self.$show2014) {
    _14L()
}
 
                
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
                selectionFeedback.selectionChanged()
            self.show2013.toggle()})
{
     
    
    VStack(alignment: .center) {
        HStack {
            VStack(alignment: .leading) {
                Text("2013")
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
    .frame(width: screen.width-30, height: 80)
    .background(Color("Color-2"))
    .cornerRadius(11)
    //.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
    //.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
    .overlay(RoundedRectangle(cornerRadius: 10)
    .stroke(Color.gray.opacity(0.1), lineWidth: 2))
    .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
    .padding(.top)

}
.sheet(isPresented: self.$show2013) {
    _13L()
}
 
            
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
        selectionFeedback.selectionChanged()
    self.show2012.toggle()}) {

        
        VStack(alignment: .center) {
            HStack {
                VStack(alignment: .leading) {
                    Text("2012")
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
        .frame(width: screen.width-30, height: 80)
        .background(Color("Color-2"))
        .cornerRadius(11)
        //.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
        //.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color.gray.opacity(0.1), lineWidth: 2))
        .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
        .padding(.top)
        
        
}
.sheet(isPresented: self.$show2012) {
    _12L()
}
 
            
Button(action: {
let selectionFeedback = UISelectionFeedbackGenerator()
            selectionFeedback.selectionChanged()
        self.show2011.toggle()}) {

            
VStack(alignment: .center) {
    HStack {
        VStack(alignment: .leading) {
            Text("2011")
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
.frame(width: screen.width-30, height: 80)
.background(Color("Color-2"))
.cornerRadius(11)
//.shadow(color: Color.black.opacity(0.1), radius: 2, x: -3, y: -2)
//.shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 4)
.overlay(RoundedRectangle(cornerRadius: 10)
.stroke(Color.gray.opacity(0.1), lineWidth: 2))
.shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
.padding(.top)
            
}
            .sheet(isPresented: self.$show2011) {
                _11L()
            }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.bottom, 28)
          }
    
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
//                  Image(systemName: "play.fill")
//                      .font(.system(size: 25))

                    .frame(width: 50, height: 50)
            }
            .padding()
            Spacer()
        }
        .frame(width: screen.width-30, height: 80.0)
            // .background(Color("secondary"))
            .background(Color("Color-2"))
            .cornerRadius(11)
            .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.1), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 10, x: 0, y: 5)
    }

}
    

struct OlevelEnglishView_Previews: PreviewProvider {
static var previews: some View {
    ForEach(["iPhone 8", "iPhone XS"], id: \.self) { deviceName in
        OlevelEnglishView()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
       }
   }
}



