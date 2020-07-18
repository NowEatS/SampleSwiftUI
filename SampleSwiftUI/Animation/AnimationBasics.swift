//
//  AnimationBasics.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct AnimationBasics: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x: 50, y: 50)
//                .animation(Animation
//                    .easeInOut(duration: 3)
//                    .speed(1.5)
////                    .delay(1)
//            )
            
            Spacer()
            

            
            Button(action: {
                withAnimation {
                    self.position = self.position == .zero ? CGPoint(x: 300, y: 500) : .zero
                }
            }, label: {
                Text("Animate")
            })
                .padding()
            
            Button(action: {
                self.position = self.position == .zero ? CGPoint(x: 300, y: 500) : .zero
            }, label: {
                Text("Animate")
            })
                .padding()
        }
    }
}

struct AnimationBasics_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasics()
    }
}
