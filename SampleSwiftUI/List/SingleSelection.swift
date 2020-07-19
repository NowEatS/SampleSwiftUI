//
//  SingleSelection.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct SingleSelection: View {
    var items = AppleProduct.sampleList
    
    @State private var selected: AppleProduct? = nil
    
    var body: some View {
        VStack {
            Text("Managing Selection")
                .font(.largeTitle)
            
            Text("Selected: \(selected?.name ?? "-")")
            
            List(items, id: \.self, selection: $selected) { item in
                Button(action: {
//                    self.selected = item
                }, label: {
                    Text(item.name)
                })
            }
        }
        .navigationBarItems(trailing: EditButton())
        
    }
}

struct ManagingSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SingleSelection()
        }
    }
}
