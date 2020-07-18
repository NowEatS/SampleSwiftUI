//
//  SpringAnimation.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x: 50, y: 50)
                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
            
            Spacer()
            
            Button(action: {
                self.position = self.position == .zero ? CGPoint(x: 300, y: 500) : .zero
            }, label: {
                Text("Animate")
            })
                .padding()
        }
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
