//
//  Button.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Button: View {
    @State private var value = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Random Number")
                .font(.largeTitle)
            
            Text("\(value)")
                .font(.system(size: 200))
            
            Spacer()
            
            // #1
            Button(action: {
                self.value = Int.random(in: 1...100)
            }, label: {
                HStack {
                    Image(systemName: "repeat")
                    
                    Text("Generate")
                }
                .frame(width: 200, height: 60)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(20)
            })
        }
    }
}

struct View_Button_Previews: PreviewProvider {
    static var previews: some View {
        View_Button()
    }
}
