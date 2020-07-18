//
//  TextStyle.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct StandardTextStyle: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Large Title")
                .font(.largeTitle)
            
            Text("Title")
                .font(.title)
            
            Text("Headline")
                .font(.headline)
            
            Text("Subheadline")
                .font(.subheadline)
            
            Text("body")
                .font(.body)
            
            Text("callout")
                .font(.callout)
            
            Text("caption")
                .font(.caption)
            
            Text("footnote")
                .font(.footnote)
        }
    }
}

struct StandardTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        StandardTextStyle()
    }
}
