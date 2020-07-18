//
//  ColorScene.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ColorScene: View {
    @Binding var showSheet: Bool
    var color = Color.black
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "smiley")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {
                self.showSheet  = false
            }, label: {
                Text("Close")
                    .font(.title)
            })
                .padding()
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
    }
}

struct ColorScene_Previews: PreviewProvider {
    static var previews: some View {
        ColorScene(showSheet: .constant(false))
    }
}
