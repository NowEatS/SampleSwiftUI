//
//  Grid.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Grid: View {
    var items = AppleProduct.sampleList
    var body: some View {
        VStack {
            Text("Grid")
                .font(.largeTitle)
            
            VStack(spacing: 30) {
                ForEach(0..<3) { row in
                    HStack(spacing: 30) {
                        ForEach(0..<2) { col in
                            GridItem(product: self.items[row * 3 + col])
                                .frame(width: 150, height: 150)
                        }
                    }
                }
            }
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
