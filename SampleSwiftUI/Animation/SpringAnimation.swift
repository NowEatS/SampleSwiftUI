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
                /*
                 관성 느낌을 주는 스프링 애니메이션
                 response: 관성의 강도
                 dampingFraction: 관성에 저항하는 정도 (브레이크)
                 blendDuration: 스프링 애니메이션에 반응할 시간? 잘모르겠다.
                 */
                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
            
            Spacer()
            
            Button(action: {
                self.position = self.position == .zero ? CGPoint(x: 260, y: 480) : .zero
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
