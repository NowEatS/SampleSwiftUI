//
//  ZStack.swift
//  SystemViews
//
//  Created by TaeWon Seo on 2020/07/13.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_ZStack: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(systemName: "suit.heart.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
            
            Image(systemName: "suit.club.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            
            Image(systemName: "suit.spade.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundColor(.black)
            
            Image(systemName: "suit.diamond.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .offset(x: 100, y: 100)
        }
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        View_ZStack()
    }
}
