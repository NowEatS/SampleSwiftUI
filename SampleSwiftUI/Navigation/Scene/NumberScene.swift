//
//  NumberScene.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct NumberScene: View {
    var number = 0
    var color = Color.black
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.system(size: 200))
                .foregroundColor(.white)
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Dismiss")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
//        .navigationBarItems(trailing: Text("구현했다"))
    }
}

struct NumberScene_Previews: PreviewProvider {
    static var previews: some View {
        NumberScene()
    }
}
