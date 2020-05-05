//
//  TestButtonView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/5/4.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI

struct OLEng: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLEngYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            EngDocsView()
            .padding(.top, -10)
            
            
            }
            .navigationBarTitle("English")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLMath: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLMathYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            MathDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Mathematics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLPhy: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLPhyYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            PhyDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Physics")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLCs: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLCsYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            CsDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Computer Science")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLBio: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLBioYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            BioDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Biology")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}

struct OLGeo: View {
@Binding var isNavigationBarHidden: Bool
    
var body: some View {
        
    VStack {
        
            OLGeoYearView(isNavigationBarHidden: $isNavigationBarHidden)
            
            GeoDocsView()
            .padding(.top, -5)
            
            
            }
            .navigationBarTitle("Geography")
            .onAppear {
                self.isNavigationBarHidden = false
        }
        
        
    }
    
}









struct TestButtonView_Previews: PreviewProvider {
    @State static var isNavigationBarHidden: Bool = false
    
    static var previews: some View {
         
        OLEng(isNavigationBarHidden: $isNavigationBarHidden)
        
    }
}

 

struct YearRoundedButton: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
          .modifier(FontCoustom5(size: 48))
            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .padding(.bottom, -10)
            .frame(width: 70, height: 100)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
               RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 2))
            .shadow(color: Color.gray.opacity(0.2), radius: 3, x: 0, y: 2)
    }
}

 

struct OLEngYearView: View {
    
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
                        LandmarkList()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        _18List()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        _17List()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        _16L()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        _15L()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        _14L()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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

struct OLMathYearView: View {
    
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
                        OMath19ListView()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OMath18ListView()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OMath17ListView()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OMath16ListView()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OMath15ListView()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OMath14ListView()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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


struct OLPhyYearView: View {
    
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
                        OPhy19ListView()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OPhy18ListView()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OPhy17ListView()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OPhy16ListView()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OPhy15ListView()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OPhy14ListView()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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

struct OLCsYearView: View {
    
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
                        OCs19ListView()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OCs18ListView()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OCs17ListView()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OCs16ListView()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OCs15ListView()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OCs14ListView()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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

struct OLBioYearView: View {
    
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
                        OBio19ListView()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OBio18ListView()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OBio17ListView()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OBio16ListView()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OBio15ListView()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OBio14ListView()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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

struct OLGeoYearView: View {
    
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
                        OGeo19ListView()
                    }
                    
                    Button("18") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2018.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2018) {
                        OGeo18ListView()
                    }
                    
                    Button("17") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2017.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2017) {
                        OGeo17ListView()
                    }
                    
                    Button("16") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2016.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2016) {
                        OGeo16ListView()
                    }
                    
                    Button("15") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2015.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2015) {
                        OGeo15ListView()
                    }
                    
                    Button("14") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2014.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2014) {
                        OGeo14ListView()
                    }
                    
                    Button("13") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2013.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2013) {
                        _13L()
                    }
                    
                    Button("12") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2012.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2012) {
                        _12L()
                    }
                    
                    Button("11") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        self.show2011.toggle()
                    }
                    .buttonStyle(YearRoundedButton())
                        
                    .sheet(isPresented: self.$show2011) {
                        _11L()
                    }
                    
                    Button("10") {
                        
                        let selectionFeedback = UISelectionFeedbackGenerator()
                        selectionFeedback.selectionChanged()
                        
                        
                    }
                    .buttonStyle(YearRoundedButton())
                    
                    
                    
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

 
