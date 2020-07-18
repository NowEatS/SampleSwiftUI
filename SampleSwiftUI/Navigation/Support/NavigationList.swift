//
//  NavigationList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct NavigationList: View {
   var body: some View {
      List {
         SupportNavigationLink("Sheet") { Nav_Sheet() }
         SupportNavigationLink("Popover") { Nav_Popover() }
         SupportNavigationLink("Navigation View") { Nav_NavigationView() }
         SupportNavigationLink("Tab View") { Nav_TabView() }
      }
      .navigationBarTitle("Image")
   }
}

struct NavigationList_Previews: PreviewProvider {
   static var previews: some View {
      NavigationList()
   }
}
