//
//  ImageBasics.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ImageBasics: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            //
            Image("swiftui-logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
            
            Image(systemName: "star")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height:  300)
                .foregroundColor(.yellow)
            
            HStack {
                Image(systemName: "person.crop.circle")
                    .font(.largeTitle)
                
                Text("Profile")
                    .font(.largeTitle)
            }
            .padding()
            
            
            Spacer()
        }
    }
}

struct ImageBasics_Previews: PreviewProvider {
    static var previews: some View {
        ImageBasics()
    }
}
