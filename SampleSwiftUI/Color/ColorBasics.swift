//
//  ColorBasics.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ColorBasics: View {
    
    var body: some View {
        VStack {
            Text("Hello, SwiftUI Color!")
                .font(.largeTitle)
            
            //
            Color.blue
            
            Color.yellow
            
            Color(.sRGB, red: 70.0/255.0, green: 53.0/255.0, blue: 99.0/255.0, opacity: 1.0)
            
            Color("myCustomColor")
        }
        .background(Color(UIColor.systemBackground))
        
    }
}

struct ColorBasics_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorBasics()
                .environment(\.colorScheme, .light)
            
            ColorBasics()
                .environment(\.colorScheme, .dark)
        }
        
    }
}
