//
//  ImageScene.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ImageScene: View {
    var imageName: String
    var color: Color
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Button(action: {
                self.selectedIndex = 2
                }, label: {
                    Text("Last Tab")
            })
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ImageScene_Previews: PreviewProvider {
    static var previews: some View {
        ImageScene(imageName: "circle", color: Color.red, selectedIndex: .constant(0))
    }
}
