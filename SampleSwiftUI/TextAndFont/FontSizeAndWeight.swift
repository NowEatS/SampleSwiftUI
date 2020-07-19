//
//  FontSizeAndWeight.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct FontSizeAndWeight: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("50pt Font")
                .font(.system(size: 50))
            
            Text("Black")
                .font(.system(size: 50, weight: .black))
            
            Text("Heavy")
                .font(.system(size: 50, weight: .heavy))
            
            Text("Bold")
                .font(.system(size: 50, weight: .bold))
            
            Text("SemiBold")
                .font(.system(size: 50, weight: .semibold))
            
            Text("Midium")
            
            Text("Regular")
            
            Text("Light")
            
            Text("Thin")
            
            Text("Ultra Light")
        }
    }
}

struct FontSizeAndWeight_Previews: PreviewProvider {
    static var previews: some View {
        FontSizeAndWeight()
    }
}
