//
//  SectionedList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct SectionedList: View {
    
    var items = CategorizedProduct.sampleList
    
    var body: some View {
        VStack {
            Text("Sectioned List")
                .font(.largeTitle)
            
            //            List {
            //                Section {
            //                    Text("1")
            //                    Text("2")
            //                }
            //
            //                Section(header: Text("Header"), footer: Text("Footer")) {
            //                    Text("3")
            //                    Text("4")
            //                    Text("5")
            //                }
            //            }
            
            List {
                ForEach(items) { section in
                    if section.footer != nil {
                        Section(header: Text(section.header), footer: Text(section.footer!)) {
                            ForEach(section.list) { item in
                                Text(item.name)
                            }
                        }
                    } else {
                        Section(header: Text(section.header)) {
                            ForEach(section.list) { item in
                                Text(item.name)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SectionedList_Previews: PreviewProvider {
    static var previews: some View {
        SectionedList()
    }
}
