//
//  Text.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

let longText: String = "어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복어쩌구저쩌구 반복"

struct View_Text: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .background(Color.yellow)
            
            Text(longText)
                .frame(width: 250)
                .lineLimit(7)
                .truncationMode(.tail)
                .multilineTextAlignment(.center)
                .lineSpacing(7)
            
            Text("살어리 살어리랐다 청산에 살어리랐다")
                .font(.largeTitle)
                .frame(width: 300)
                .lineLimit(1)
                .allowsTightening(true)
                .minimumScaleFactor(0.5)
        }
    }
}

struct View_Text_Previews: PreviewProvider {
    static var previews: some View {
        View_Text()
    }
}
