//
//  TabView.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct Nav_TabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            ImageScene(imageName: "star", color: Color.red, selectedIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "star")
                    Text("Star \(selectedIndex)")
            }
            .tag(0)
            
            ImageScene(imageName: "heart", color: Color.green, selectedIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Heart")
            }
            .tag(1)
            
            ImageScene(imageName: "play", color: Color.blue, selectedIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "play")
                    Text("Play")
            }
            .tag(2)
            
        }
    }
}

struct Nav_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Nav_TabView()
    }
}
