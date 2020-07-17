//
//  View_Spacer.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_Spacer: View {
   var body: some View {
      VStack(spacing: 0) { // #6
         HStack {
            Image(systemName: "suit.heart.fill")
               .resizable()
               .frame(width: 70, height: 70)
               .foregroundColor(.white)
            
            // #3
            Spacer()
         }
         .padding()
         .background(Color.blue)
         
         // #1
        Spacer()
            .frame(height: 50)
         
         VStack {
            // #5
            
            
            Image(systemName: "suit.spade.fill")
               .resizable()
               .frame(width: 70, height: 70)
               .foregroundColor(.white)
            
            // #4
            //Spacer()
         }
         .padding()
         .background(Color.red)
         
         // #2
        Spacer()
            .frame(height: 20)
        Spacer()
      }
   }
}

struct View_Spacer_Previews: PreviewProvider {
   static var previews: some View {
      View_Spacer()
   }
}
