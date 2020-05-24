//
//  IGYearView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/24.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct ICMath: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICMathYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Mathematics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICEco: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICEcoYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Economics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICPhy: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICPhyYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Physics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICEsl: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICEslYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("English Second Language")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICBio: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICBioYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Biology")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICCs: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICCsYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Computer Science")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICGeo: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICGeoYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Geography")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICHis: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICHisYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("History")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICChe: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICCheYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Chemistry")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}

struct ICChin: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
    ZStack{
    

    Color("BG1")
        
    VStack {
        
            ICChinYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
    
            }
            .navigationBarTitle("Chinese First Language")
            .onAppear {
                self.isNavigationBarHidden = false
        }
     }
  }
    
}



struct ICMathYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICMath19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICEcoYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICEco19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICPhyYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICPhy19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICEslYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICEsl19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICBioYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICBio19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICCsYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICCs19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICGeoYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICGeo19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICHisYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICHis19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICCheYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICChe19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}

struct ICChinYearView: View {
 
 @Binding var isNavigationBarHidden: Bool
 
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
 var body: some View {
     ScrollView(.horizontal, showsIndicators: false) {
         HStack {
             Group {
                 Button("19") {
                     
                     let selectionFeedback = UISelectionFeedbackGenerator()
                     selectionFeedback.selectionChanged()
                     
                     self.show2019.toggle()
                 }
                 .buttonStyle(YearRoundedButton())
                     
                 .sheet(isPresented: self.$show2019) {
                     ICChin19ListView()
                     .modifier(DisableModalDismiss(disabled: true))
                 }
                    
                    
                    
                .padding(.top, 3)
                .padding(.trailing, 8)
                Spacer()
            }
            .padding()
            .padding(.bottom, -7)
        }
    }
  }
}
