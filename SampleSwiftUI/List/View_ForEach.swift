//
//  View_ForEach.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct View_ForEach: View {
    var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            Text("ForEach")
                .font(.largeTitle)
            
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}

struct View_ForEach_Previews: PreviewProvider {
    static var previews: some View {
        View_ForEach()
    }
}
