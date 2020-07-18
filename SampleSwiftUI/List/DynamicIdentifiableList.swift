//
//  DynamicIdentifiableList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct DynamicIdentifiableList: View {
    
    var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            Text("Identifiable List")
                .font(.largeTitle)
            
            List(items) { item in
                Text(item.name)
            }
        }
    }
}

struct DynamicIdentifiableList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicIdentifiableList()
    }
}
