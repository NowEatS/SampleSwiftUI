//
//  CustomizingList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/18.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.title)
            
            Text(title)
                .font(.title)
        }
        .frame(height: 60)
    }
}

struct CustomizingList: View {
    var body: some View {
        VStack {
            Text("Customizing List")
                .font(.largeTitle)
                .listRowBackground(Color.red)
            
            List {
                Section(header: HeaderView(title: "Lorem Ipsum", imageName: "star")) {
                    Text("Hello, List!")
                    Text("List Row Insets")
                        .listRowInsets(.init(top: 0, leading: 100, bottom: 0, trailing: 0    ))
                    
                    Text("List Row Backgorund")
                        .listRowBackground(Color.yellow)
                }
                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0    ))
                
                Section() {
                    Text("One")
                    Text("Two")
                }
                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0    ))
                
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct CustomizingList_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingList()
    }
}
