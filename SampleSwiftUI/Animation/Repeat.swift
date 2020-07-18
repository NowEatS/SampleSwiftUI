//
//  Repeat.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Animation_Repeat: View {
    @State private var animating = false
    
    var finiteRepeat: Animation {
        Animation.linear(duration: 1.5).repeatCount(3, autoreverses: false)
    }
    
    var infiniteRepeat: Animation {
        Animation.linear(duration: 1.5).repeatForever(autoreverses: false)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .resizable()
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(animating ? 360 : 0))
                .animation(infiniteRepeat)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear { self.animating = true }
    }
}

struct Animation_Repeat_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Repeat()
    }
}
