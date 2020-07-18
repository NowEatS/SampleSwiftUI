//
//  EditMode.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct EditMode: View {
    @State private var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            List {
                ForEach(items) { item in
                    Text(item.name)
                }
                .onDelete { rows in
                    self.items.remove(atOffsets: rows)
                }
                .onMove(perform: move)
            }
        }
        .navigationBarTitle("Edit Mode")
        .navigationBarItems(trailing: EditButton())
    }
    
    func move(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct EditMode_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditMode()
        }
    }
}
