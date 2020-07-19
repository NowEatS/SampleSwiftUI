//
//  DynamicList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct DynamicList: View {
    
    var items = Product.sampleList
    
    var body: some View {
        VStack {
            Text("Dynamic List")
                .font(.largeTitle)
            // 각 요소를 구분할 id 전달.
            List(items, id: \.name) { item in
                Text(item.name)
            }
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
