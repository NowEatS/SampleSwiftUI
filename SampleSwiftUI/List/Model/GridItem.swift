//
//  GridItem.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct GridItem: View {
    let product: AppleProduct
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.category)
                .font(.subheadline)
            
            Text(product.name)
                .font(.title)
            
            Text(product.summary)
                .font(.body)
        }
    }
}

struct GridItem_Previews: PreviewProvider {
    static var previews: some View {
        GridItem(product: AppleProduct.sampleList[0])
    }
}
