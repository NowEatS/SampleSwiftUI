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
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.body)
//                .textContentType(.username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            SecureField("Input Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.body)
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
