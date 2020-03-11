//
//  TestLottieView.swift
//  PastPapaer
//
//  Created by Rhapsody on 2020/3/11.
//  Copyright © 2020 Rhapsody. All rights reserved.
//

import SwiftUI
import Lottie

struct TestLottieView: View {
    var body: some View {
         
            AnimationsView()
        
    }
}

struct AnimationsView : UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<AnimationsView>) -> AnimationView {
        
        let aniView = AnimationView()
        let animation = Animation.named("Switch" , subdirectory: "TestAnimations")
        aniView.animation = animation
        aniView.loopMode = .loop
        aniView.play()
        return aniView
    }
    func updateUIView(_ uiView: AnimationView, context: UIViewRepresentableContext<AnimationsView>) {
         
    }
    
}






struct TestLottieView_Previews: PreviewProvider {
    static var previews: some View {
        TestLottieView()
    }
}
