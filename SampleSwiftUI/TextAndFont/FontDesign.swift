//
//  FontDesign.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct FontDesign: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Default")
                .font(.largeTitle)
            
            Text("Monospaced")
                .font(.system(.largeTitle, design: .monospaced))
            
            Text("Rounded")
                .font(.system(.largeTitle, design: .rounded))
            
            Text("Serif")
                .font(.system(.largeTitle, design: .serif))
        }
    }
}

struct FontDesign_Previews: PreviewProvider {
    static var previews: some View {
        FontDesign()
    }
}
