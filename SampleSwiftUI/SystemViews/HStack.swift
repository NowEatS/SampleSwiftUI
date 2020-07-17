//
//  HStack.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_HStack: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            Image(systemName: "suit.heart.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
            
            Image(systemName: "suit.club.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.black)
            
            Image(systemName: "suit.spade.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
            
            Image(systemName: "suit.diamond.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct View_HStack_Previews: PreviewProvider {
   static var previews: some View {
      View_HStack()
   }
}
