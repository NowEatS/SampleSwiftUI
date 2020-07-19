//
//  TextField.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_TextField: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("TextField")
                .font(.largeTitle)
            
            Text("input: \(name)")
                .font(.title)
                .foregroundColor(.secondary)
            
            //
            TextField("Input SomeThing", text: $name, onEditingChanged: { changed in
                print(changed)
            }, onCommit: {
                print("commit")
            })
                .padding()
                // 텕스트필드 테두리 스타일 지정
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.body)
                // 자동완성 타입 지정
                //.textContentType(.username)
                // 영문 자동 대문자 입력 설정
                .autocapitalization(.none)
                // 자동문법교정 설정
                .disableAutocorrection(true)
            
            SecureField("Input Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.body)
                // 입력 키보드 스타일 지정
                .keyboardType(.numberPad)
            Spacer()
        }
    }
}

struct View_TextField_Previews: PreviewProvider {
    static var previews: some View {
        View_TextField()
    }
}
