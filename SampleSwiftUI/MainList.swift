//
//  MainList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct MainList: View {
   var body: some View {
      NavigationView {
         List {
            SupportNavigationLink("System Views") { SystemViewList() }
            SupportNavigationLink("Text and Font") { TextAndFontList() }
            SupportNavigationLink("Color") { ColorList() }
            SupportNavigationLink("Image") { ImageList() }
            SupportNavigationLink("Animation") { AnimationList() }
            SupportNavigationLink("List") { ListList() }
            SupportNavigationLink("Navigation") { NavigationList() }
//            SupportNavigationLink("State and Binding") { StateAndBindingList() }
//            SupportNavigationLink("Gestures") { GestureList() }
//            SupportNavigationLink("Core Data") { CoreDataList() }
         }
         .navigationBarTitle("Mastering SwiftUI")
      }
   }
}
struct MainList_Previews: PreviewProvider {
    static var previews: some View {
        MainList()
    }
}
