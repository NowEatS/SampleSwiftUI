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
                // 문자열 길이가 길어 생략할 때 생략하는 위치 지정
                .truncationMode(.tail)
                // 여러 줄의 문자를 표현할 때 정렬 위치 지정
                .multilineTextAlignment(.center)
                .lineSpacing(7)
            
            Text("긴 텍스트 긴 텍스트 매우 긴 텍스트 입니다")
                .font(.largeTitle)
                .frame(width: 300)
                // 문자 수에 따라 표현할 수 있는 라인 수
                .lineLimit(1)
                // 최대한 많은 문자를 표현하기 위해 자간 조정
                .allowsTightening(true)
                // 모든 문자를 표현하기 위해 작아질 수 있는 문자의 최소 크기 지정
                .minimumScaleFactor(0.5)
        }
    }
}

struct View_Text_Previews: PreviewProvider {
    static var previews: some View {
        View_Text()
    }
}
