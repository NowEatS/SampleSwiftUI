//
//  ColorList.swift
//  SampleSwiftUI
//
//  Created by TaeWon Seo on 2020/07/19.
//  Copyright © 2020 NOWEAT. All rights reserved.
//

import SwiftUI

struct ColorList: View {
   var body: some View {
      List {
         SupportNavigationLink("Color Basics") { ColorBasics() }
//         SupportNavigationLink("Foreground Color") { ForegroundColor() }
      }
      .navigationBarTitle("Color")
   }
}

struct ColorList_Previews: PreviewProvider {
   static var previews: some View {
      ColorList()
   }
}
