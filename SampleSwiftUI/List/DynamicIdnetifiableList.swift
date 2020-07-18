//
//  DynamicIdnetifiableList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct DynamicIdnetifiableList: View {
    
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

struct DynamicIdnetifiableList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicIdnetifiableList()
    }
}
