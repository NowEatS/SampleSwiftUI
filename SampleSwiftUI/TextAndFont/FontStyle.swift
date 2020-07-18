//
//  FontStyle.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct FontStyle: View {
   var body: some View {
      VStack(spacing: 20) {
         Text("No Style")
            .font(.system(size: 40))
         
         Text("Bold")
            .font(.system(size: 40))
            .bold()
         
         Text("Italic")
            .font(.system(size: 40))
            .italic()
         
         Text("Underline")
            .font(.system(size: 40))
            .underline()
         
         Text("Strikethrough")
            .font(.system(size: 40))
            .strikethrough()
         
         Text("123")
            .font(.system(size: 40))
         
         Text("Monospaced 123")
            .font(Font.system(size: 40).monospacedDigit())
         
         HStack {
            Text("Small ")
               .font(Font.system(size: 40))
            
            Text("Capitals")
            .font(Font.system(size: 40).smallCaps())
         }
                  
         Text("Lower Small Caps")
            .font(Font.system(size: 40).lowercaseSmallCaps())
         
         Text("Upper Small Caps")
            .font(Font.system(size: 40).uppercaseSmallCaps())
      }
   }
}


struct FontStyle_Previews: PreviewProvider {
    static var previews: some View {
        FontStyle()
    }
}
