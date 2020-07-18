//
//  MultiSelection.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct MultiSelection: View {
    var items = AppleProduct.sampleList
    
    @State private var selected: Set<AppleProduct> = []
    
    var body: some View {
        VStack {
            Text("Managing Selection")
                .font(.largeTitle)
            
            Text("\(selected.count) imtes(s) selected")
                .font(.title)
            
            List(items, id: \.self, selection: $selected) { item in
                //Text(item.name)
                
                //MARK:- 도전과제 : 편집 모드가 아니어도 선택가능하게 하라.
                Button(action: {
                    if self.selected.contains(item) {
                        self.selected.remove(item)
                    } else {
                        self.selected.insert(item)
                    }
                }) {
                    if self.selected.contains(item) {
                        HStack {
                            Text(item.name)
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    } else {
                        Text(item.name)
                    }
                }
                //MARK:-
            }
            
            
        }
        .navigationBarItems(trailing: EditButton())
    }
}

struct MultiSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MultiSelection()
        }
    }
}
