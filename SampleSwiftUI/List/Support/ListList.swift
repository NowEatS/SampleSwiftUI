//
//  ListList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ListList: View {
   var body: some View {
      List {
         Section {
            SupportNavigationLink("Static List") { StaticList() }
            SupportNavigationLink("Dynamic List") { DynamicList() }
            SupportNavigationLink("Identifiable List") { DynamicIdentifiableList() }
            SupportNavigationLink("Sectioned List") { SectionedList() }
            SupportNavigationLink("Customizing List") { CustomizingList() }
            SupportNavigationLink("Single Selection") { SingleSelection() }
            SupportNavigationLink("Multi Selection") { MultiSelection() }
         }
         
         Section {
            SupportNavigationLink("Edit Mode") { EditMode() }
            SupportNavigationLink("ForEach") { View_ForEach() }
            SupportNavigationLink("Grid") { Grid() }
//            SupportNavigationLink("Scroll View") { View_ScrollView() }
            //SupportNavigationLink("Geometry Reader") { () }
         }
      }
      .navigationBarTitle("List")
   }
}

struct ListList_Previews: PreviewProvider {
   static var previews: some View {
      ListList()
   }
}
